from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('about',views.about, name='about'),
    path('contact',views.contact,name='contact'),
    path('login',views.login,name='login'),
    path('cars', views.carList,name='cars'),
    path('carDetail/<int:car_id>/',views.carDetail,name='detail'),
    path('signup',views.signup,name='signup'),
    path('userDashboard', views.userDashboard,name='userdashboard'),
    path('userDashboard/orders',views.orders,name='my_orders'),
    path('logout',views.logout_user,name='logout'),
    path('userDashboard/reviewdashboard',views.review_dashboard,name='reviewdashboard'),
    
]
