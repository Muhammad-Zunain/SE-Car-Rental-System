from .models import Car, CarImage, CarVariant, CarModel, Rental, RentalStatus, Payment, Review, UserType, User
from django.contrib.auth import login as django_login, authenticate, logout
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import get_user_model
from django.http import JsonResponse
from django.core import serializers
from django.db.models import Q
from datetime import datetime
import json

User = get_user_model()

def home(request): 
    user = User.objects.filter(user_type__type_name='Customer')

    cars = Car.objects.all()
    completed_orders_count = Rental.objects.filter(status__name='Completed').count()
    customers_count = User.objects.filter(user_type__type_name='Customer').count()
    total_vehicles_count = Car.objects.count()

    if request.user.is_authenticated and request.user in user:
        return render(request, 'home.html', {"user": request.user, 'cars': cars, 'completed_orders_count': completed_orders_count, 'customers_count': customers_count, 'total_vehicles_count': total_vehicles_count}) 
    
    return render(request, 'home.html', {'cars': cars, 'completed_orders_count': completed_orders_count, 'customers_count': customers_count, 'total_vehicles_count': total_vehicles_count})

def about(request):
    completed_orders_count = Rental.objects.filter(status__name='Completed').count()
    customers_count = User.objects.filter(user_type__type_name='Customer').count()
    total_vehicles_count = Car.objects.count()

    return render(request, 'about.html', {"user": request.user, "completed_orders_count": completed_orders_count, "customers_count": customers_count, "total_vehicles_count": total_vehicles_count})

def contact(request):
    return render(request, 'contact.html', {"user": request.user})

def login(request):
    if request.method == 'POST':
        body = json.loads(request.body)
        email = body['email']
        password = body['password']

        user = authenticate(request, username=email, password=password)

        if user:
            django_login(request, user)
            message = {'status' : 'Success'}
            return JsonResponse(message)
            
        else:
            message = {'status' : 'Error'}
            return JsonResponse(message)
    elif request.user.is_authenticated:
        return redirect('home')
    
    return render(request, 'login.html')

        
def carList(request):

    cars_list = Car.objects.all()
    cars_list.order_by('variant__model__year')
    query_params = request.GET
    
    minPrice = query_params.get('minPrice', None)
    maxPrice = query_params.get('maxPrice', None)
    categories = query_params.get('categories', None)

    if minPrice and maxPrice:
        cars_list = cars_list.filter(price_per_day__gte=minPrice, price_per_day__lte=maxPrice)

    if categories:
        categories = categories.split(',')
        filter_conditions = Q()
        for category in categories:
            filter_conditions |= Q(variant__model__category__name=category)
        cars_list = cars_list.filter(filter_conditions)    

    p = Paginator(cars_list, 4)

    # get the page number from the request
    page_number = request.GET.get('page')

    try:
        cars = p.get_page(page_number)
    
    except PageNotAnInteger:
        cars = p.get_page(1)
    
    # if the page number is greater than the total number of pages
    except EmptyPage:
        cars = p.get_page(p.num_pages)

    return render(request, 'carList.html', {"user": request.user, "cars": cars})


def carDetail(request, car_id):

    car = Car.objects.get(car_id=car_id)
    images = car.images.all()

    if request.method == 'POST':
        body = json.loads(request.body)

        if body.get('booking'):
            if not request.user.is_authenticated:
                message = {'error': 'You need to login to book a car'}
                return JsonResponse(message)
            
            else:
                pickup_date = datetime.strptime(body['pickDate'], '%Y-%m-%d')
                drop_date = datetime.strptime(body['dropDate'], '%Y-%m-%d')
                
                rentals = Rental.objects.filter(car=car, pickup_date__lte=drop_date, drop_date__gte=pickup_date)
                if rentals.exists():
                    message = {'error': 'Car is already booked for the selected dates.'}
                    return JsonResponse(message)
            
                rentals = Rental.objects.filter(car=car)
                for rental in rentals:
                    if pickup_date == rental.pickup_date:
                        message = {'error': 'Car is already booked.'}
                        return JsonResponse(message)
                
                message = {'success': 'success'}
                return JsonResponse(message)


        elif body.get('payment'):
            booking_date = datetime.now()
            pickup_date = datetime.strptime(body['pickDate'], '%Y-%m-%d')
            drop_date = datetime.strptime(body['dropDate'], '%Y-%m-%d')
            no_of_days = (drop_date - pickup_date).days
            total_price = no_of_days * car.price_per_day

            user = request.user
            user.address = body['address']
            user.phone = body['phoneNo']
            user.save()

            car.availability = False
            car.save()

            rental = Rental.objects.create(user=user, car=car, booking_date=booking_date, pickup_date=pickup_date, drop_date=drop_date, total_cost=total_price, status=RentalStatus.objects.get(name='Scheduled'))
            payment = Payment.objects.create(rental=rental, payment_type='Advance', payment_method='Online', payment_date=booking_date, amount=total_price)

            return JsonResponse({'success': 'Payment successful.'})
                   
    return render(request, 'carDetail.html', {"user": request.user, "car": car, "car_images": images})

@login_required
def userDashboard(request):

    recent_orders = Rental.objects.filter(user=request.user).order_by('-booking_date')[:5]
    upcoming_orders_count = Rental.objects.filter(user=request.user, status__name='Scheduled').count()
    completed_orders_count = Rental.objects.filter(user=request.user, status__name='Completed').count()
    cancelled_orders_count = Rental.objects.filter(user=request.user, status__name='Cancelled').count()
    cars_rented = Rental.objects.filter(user=request.user).values('car').distinct().count()

    return render(request, 'userdashboard.html', {"user": request.user, 'upcoming_orders': f'{upcoming_orders_count:02}', 'completed_orders': f'{completed_orders_count:02}', 'cancelled_orders': f'{cancelled_orders_count:02}', 'cars_rented': f'{cars_rented:02}', 'recent_orders': recent_orders})

def orders(request):

    upcoming_orders = Rental.objects.filter(user=request.user, status__name='Scheduled')
    completed_orders = Rental.objects.filter(user=request.user, status__name='Completed')
    cancelled_orders = Rental.objects.filter(user=request.user, status__name='Cancelled')

    return render(request, 'orders.html', {"user": request.user, 'upcoming_orders': upcoming_orders, 'completed_orders': completed_orders, 'cancelled_orders': cancelled_orders})


def signup(request):
    if request.method == 'POST':
        body = json.loads(request.body)
        firstname = body['first_name']
        lastname = body['last_name']
        email = body['email']
        password = body['password']
        
        if User.objects.filter(email=email).exists():
            message = {"status" : "Email Error"}
            return JsonResponse(message)
        
        # Create the user
        user_type = UserType.objects.get(type_name='Customer')
        user = User.objects.create_user(email=email, password=password, first_name=firstname, last_name=lastname, user_type=user_type)
        user.save()
            
        # Authenticate and login the user
        user = authenticate(request, username=email, password=password)
        if user is not None:
            django_login(request, user)
            message = {'status' : 'Auth Success'}
            return JsonResponse(message)
        else:
            message = {'status' : 'Auth Error'}
            return JsonResponse(message)

    elif request.user.is_authenticated:
        return redirect('home')

    return render(request, 'signup.html')


def logout_user(request):
    

    if request.method == "GET":

        logout(request)
        message = {'status': 'success'}
        return JsonResponse(message)

def review_dashboard(request):

    rentals = Rental.objects.filter(user=request.user, status__name='Completed')
    rentals_without_reviews = []

    for rental in rentals:
        if not Review.objects.filter(rental=rental).exists():
            rentals_without_reviews.append(rental)


    if request.method == "POST":
        review = json.loads(request.body)
        review_message = review['message']
        review_rating = int(review['rating'])
        review_date = datetime.now()
        rental_id = int(review['rental_id'])

        rental = Rental.objects.get(id=rental_id)
        Review.objects.create(rental=rental, comment=review_message, rating=review_rating, review_date=review_date)

        message = {'status': 'success'}
        return JsonResponse(message)

    return render(request, 'reviewdashboard.html', {"user": request.user, 'rentals': rentals_without_reviews})

# from django.conf.urls import handler404, handler500


# # Custom 500 Error Handler
# def custom_500(request):
#     return render(request, '500.html', status=500)

# # Custom 404 Error Handler
# def custom_404(request, exception):
#     return render(request, '404.html', status=404)

# handler500 = custom_500
# handler404 = custom_404

