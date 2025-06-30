# Car Rental Management System

![proj_1](https://github.com/user-attachments/assets/e0c63d50-1187-4077-9aeb-0b7e01ffa5b2)


A comprehensive web-based car rental management system built with **Django** and **MySQL**. This application provides a complete solution for car rental businesses, enabling seamless vehicle management, customer bookings, payment processing, and review systems.

---


## ✨ Features

### 👥 User Management
- **Admin Dashboard**: Complete administrative control with analytics
- **Customer Portal**: Intuitive interface for browsing and booking
- **Role-based Access Control**: Secure permission system
- **User Authentication**: Registration, login, and profile management

### 🚘 Vehicle Management
- **Comprehensive Car Catalog**: Detailed vehicle information with specifications
- **Smart Categorization**: Filter by fuel type, transmission, model, and price range
- **Multi-variant Support**: Different configurations for each car model
- **Image Gallery**: Multiple high-quality images per vehicle
- **Real-time Availability**: Live tracking of vehicle availability status
- **Maintenance Scheduling**: Track service history and upcoming maintenance

### 📅 Booking System
- **Flexible Booking**: Select pickup and drop-off dates with time slots
- **Intelligent Availability Check**: Prevents double bookings and conflicts
- **Dynamic Pricing**: Automatic cost calculation with seasonal rates
- **Booking History**: Complete transaction records for users
- **Cancellation Management**: Handle booking modifications and cancellations
- **Email Notifications**: Automated confirmations and reminders

### 💳 Payment & Financial Management
- **Multiple Payment Methods**: Credit cards, debit cards, and digital wallets
- **Secure Transactions**: PCI-compliant payment processing
- **Payment History**: Detailed financial records and receipts
- **Refund Management**: Automated refund processing for cancellations
- **Revenue Analytics**: Financial reporting and insights

### ⭐ Review & Rating System
- **Customer Reviews**: Star ratings with detailed feedback
- **Review Moderation**: Admin approval system for content quality
- **Rating Analytics**: Performance metrics for vehicles and service
- **Photo Reviews**: Upload images with reviews

---

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/Muhammad-Zunain/SE-Car-Rental-System.git
cd SE-Car-Rental-System
```

### 2. Create Virtual Environment
```bash
# Windows
python -m venv car_rental_env
car_rental_env\Scripts\activate

# macOS/Linux
python3 -m venv car_rental_env
source car_rental_env/bin/activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Database Setup
This project includes a complete MySQL database dump in the `Dump20240731` folder for quick setup:

#### 📄 Database Dump (`Dump20240731/`)
- **Complete database structure** with all tables and relationships
- **Sample data** including cars, users, and bookings for testing
- **Admin user** (username: `admin`, password: `admin123`) 
- **Sample customer accounts** for testing different user roles
- **Car inventory** with images and specifications
- **Booking history** and payment records

#### 🔧 How to Use the Database Dump

```bash
# Create MySQL database
mysql -u root -p
CREATE DATABASE car_rental_db;
CREATE USER 'car_rental_user'@'localhost' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON car_rental_db.* TO 'car_rental_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;

# Import the database dumps file
mysql -u car_rental_user -p car_rental_db < Dump20240731/..
```


### 5. Run Migrations (Skip if using SQL dump)
```bash
# Only run if you chose Option B above
python manage.py makemigrations
python manage.py migrate
```

### 7. Create Superuser (Skip if using SQL dump with existing admin)
```bash
python manage.py createsuperuser
```

### 8. Start Development Server
```bash
python manage.py runserver
```

Visit `http://127.0.0.1:8000` to access the application.

---

## 📱 Usage

### Admin Interface
1. Navigate to `/admin`
2. Login with superuser credentials
3. Manage cars, users, bookings, and payments


---

## 🗃️ Database Schema

### Core Models

#### User Model
- Custom user model extending Django's AbstractUser
- Additional fields: phone_number, address, date_of_birth

#### Car Model
- Fields: make, model, year, fuel_type, transmission, daily_rate
- Relationships: One-to-many with CarVariant

#### Booking Model
- Fields: pickup_date, dropoff_date, total_cost, status
- Relationships: ForeignKey to User and Car

#### Payment Model
- Fields: amount, payment_method, transaction_id, status
- Relationships: OneToOne with Booking

#### Review Model
- Fields: rating, comment, created_date
- Relationships: ForeignKey to User and Car

---

## 📸 Screenshots

### Dashboard
![image](https://github.com/user-attachments/assets/17a29bd4-a83c-4181-bac3-93bea7d0698b)


### Car Catalog
![image](https://github.com/user-attachments/assets/3d18a846-df9c-4612-970e-51bd4f5f44e9)

### Booking Process
![image](https://github.com/user-attachments/assets/a28bd2f8-7bf1-41f6-ba06-ee3c46c7efee)

---

## 🤝 Contributors

- [**Usman Faizyab Khan**](https://github.com/USMAN-FAIZYAB-KHAN)  
- [**Muhammad Zunain**](https://github.com/Muhammad-Zunain)
- **Ayan Khan**
- **Syed Abdul Basit**
---

⭐ **If you find this project helpful, please consider giving it a star!**
