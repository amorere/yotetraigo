# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# lets create some users
# 1. create a user
user1 = User.create(email: "jjfatorini@gmail.com", encrypted_password: "123456", first_name: "Juan", last_name: "Fatorini", date_of_birth: "1990-01-01", driver_license_expiry: "2024-01-01", phone_number: "123456789", is_driver: true, dni: "12345678", insurance: true, driver_license_dni: "12345678", criminal_record: "No")
user2 = User.create(email: "falbujar@gmail.com", encrypted_password: "789012", first_name: "Fiorella", last_name: "Albujar", date_of_birth: "1990-01-01", driver_license_expiry: "2023-01-01", phone_number: "567887623", is_driver: false, dni: "87654321", insurance: true, driver_license_dni: "87654321", criminal_record: "No")
user3 = User.create(email: "graggiog@gmail.com" , encrypted_password: "345678", first_name: "Gonzalo", last_name: "Raggio", date_of_birth: "1995-01-01", driver_license_expiry: "2022-01-01", phone_number: "101112232", is_driver: true, dni: "98765432", insurance: true, driver_license_dni: "98765432", criminal_record: "No")
user4 = User.create(email: "amorere10@gmail.com", encrypted_password: "901234", first_name: "Agustin", last_name: "Morere", date_of_birth: "1992-02-03", driver_license_expiry: "2025-02-02", phone_number: "131415161", is_driver: false, dni: "87654301", insurance: true, driver_license_dni: "87604321", criminal_record: "No")
# 2. create a car for that user
car1 = Car.create(brand: "Toyota", model: "Corolla", color: "Black", plate: "ABC123", insurance_other_drivers: true, transmission: "Manual", user_id: user2.id)
car2 = Car.create(brand: "Mazda", model: "btx5", color: "Green", plate: "ABC345", insurance_other_drivers: true, transmission: "Automatic", user_id: user4.id)
# 3. create an application for that user
application1 = Application.create(confirmation_status: "Pending", price: 100, pickup_point: "Av. Lonquén 16691", dropoff_point: "Santa Blanca 1942", pickup_datetime: "2022-03-11 02:30:00", country: "chile", city: "santiago", comune: "lo barnechea" user_id: user2.id, car_id: car1.id)
application2 = Application.create(confirmation_status: "Pending", price: 50, pickup_point: "Uriarte 2116", dropoff_point: "Echeverría 2666", pickup_datetime: "2022-07-12 03:30:00", country: "argentina", city: "buenos aires", comune: "belgrano" user_id: user4.id, car_id: car2.id)
# 4. create a booking for that user
# 5. create a review for that user
