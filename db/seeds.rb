# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# lets create some users
# 1. create a user
Booking.destroy_all
Review.destroy_all
Application.destroy_all
Car.destroy_all
User.destroy_all

puts "creando usuarios"
user1 = User.create!(email: "jjfatorini@gmail.com", password: "123456", first_name: "Juan", last_name: "Fatorini", date_of_birth: "1990-01-01", driver_license_expiry: "2024-01-01", phone_number: "123456789", is_driver: true, dni: "12345678", insurance: true, driver_license_dni: "12345678", criminal_record: "No")
user2 = User.create!(email: "falbujar@gmail.com", password: "789012", first_name: "Fiorella", last_name: "Albujar", date_of_birth: "1990-01-01", driver_license_expiry: "2023-01-01", phone_number: "567887623", is_driver: false, dni: "87654321", insurance: true, driver_license_dni: "87654321", criminal_record: "No")
user3 = User.create!(email: "graggiog@gmail.com" , password: "345678", first_name: "Gonzalo", last_name: "Raggio", date_of_birth: "1995-01-01", driver_license_expiry: "2022-01-01", phone_number: "101112232", is_driver: true, dni: "98765432", insurance: true, driver_license_dni: "98765432", criminal_record: "No")
user4 = User.create!(email: "amorere10@gmail.com", password: "901234", first_name: "Agustin", last_name: "Morere", date_of_birth: "1992-02-03", driver_license_expiry: "2025-02-02", phone_number: "137775161", is_driver: false, dni: "87654301", insurance: true, driver_license_dni: "87604321", criminal_record: "No")
user5 = User.create!(email: "skinled@lilspam.com", password: "wgO2820uP", first_name: "Santiago", last_name: "Kinled", date_of_birth: "1992-02-03", driver_license_expiry: "2025-02-02", phone_number: "131418881", is_driver: false, dni: "87658764", insurance: true, driver_license_dni: "30104321", criminal_record: "No")
user6 = User.create!(email: "hurrybush@realquickemail.com", password:"0xezE11db", first_name: "Harry", last_name: "Bush", date_of_birth: "1990-02-03", driver_license_expiry: "2026-03-05", phone_number: "199915161", is_driver: false, dni: "87687764", insurance: true, driver_license_dni: "30004321", criminal_record: "Yes")
user7 = User.create!(email:"layerseverybody@snakebutt.com", password: "93N6Q7o4h", first_name: "Layla", last_name: "Ryboy", date_of_birth: "1995-03-08", driver_license_expiry: "2027-03-05", phone_number: "131411010", is_driver: false, dni: "00087764", insurance: true, driver_license_dni: "30005551", criminal_record: "No")
user8 = User.create!(email: "armylesson@hypenated.com", password: "4DoIM8YY0", first_name: "Armando", last_name: "Lezon", date_of_birth: "1989-11-11", driver_license_expiry: "2023-01-01", phone_number: "888915161", is_driver: true, dni: "82227764", insurance: true, driver_license_dni: "32224321", criminal_record: "No")
user9 = User.create!(email: "discovertill@lilspam.com", password: "F6TpqhD52", first_name: "Darren", last_name: "Till", date_of_birth: "1991-10-03", driver_license_expiry: "2022-10-03", phone_number: "191315161", is_driver: false, dni: "87131764", insurance: false, driver_license_dni: "30131321", criminal_record: "No")
user10 = User.create!(email: "packstretch@sociallymediocre.com", password: "0x8zE11db", first_name: "Paco", last_name: "Stretch", date_of_birth: "1985-02-03", driver_license_expiry: "2025-03-05", phone_number: "193435161", is_driver: true, dni: "876343764", insurance: true, driver_license_dni: "3434321", criminal_record: "No")


puts "creando autos"
car1 = Car.create!(brand: "Toyota", model: "Corolla", color: "Black", plate: "ABC123", insurance_other_drivers: true, transmission: "Manual", user_id: user2.id)
car2 = Car.create!(brand: "Mazda", model: "btx5", color: "Green", plate: "CBA345", insurance_other_drivers: true, transmission: "Automatic", user_id: user4.id)
car3 = Car.create!(brand: "Mazda", model: "miata", color: "Red", plate: "XXX619", insurance_other_drivers: true, transmission: "Manual", user_id: user5.id)
car4 = Car.create!(brand: "Mini", model: "Cooper", color: "Blue", plate: "ACD666", insurance_other_drivers: true, transmission: "Manual", user_id: user6.id)
car5 = Car.create!(brand: "Ford", model: "Escort", color: "Black", plate: "SEX369", insurance_other_drivers: true, transmission: "Manual", user_id: user7.id)
car6 = Car.create!(brand: "Ford", model: "Fiesta", color: "White", plate: "XZX696", insurance_other_drivers: true, transmission: "Manual", user_id: user9.id)

puts "creando applications"
application1 = Application.create!(confirmation_status: "Confirmed", price: 45000, pickup_point: "Av. Lonquén 16691", drop_point: "Santa Blanca 1942", pickup_datetime: "2022-03-11 02:30:00", country: "Chile", city: "santiago", comune: "Lo Barnechea", user_id: user2.id, car_id: car1.id)
application2 = Application.create!(confirmation_status: "Pending", price: 35, pickup_point: "Uriarte 2116", drop_point: "Echeverría 2666", pickup_datetime: "2022-07-12 03:30:00", country: "Argentina", city: "buenos aires", comune: "Belgrano", user_id: user4.id, car_id: car2.id)
application3 = Application.create!(confirmation_status: "Pending", price: 48000, pickup_point: "Los Sauzales 2296", drop_point: "Uno Sur 64", pickup_datetime: "2022-03-10 04:30:00", country: "Chile", city: "Santiago", comune: "Batuco", user_id: user5.id, car_id: car3.id)
application4 = Application.create!(confirmation_status: "Pending", price: 25000, pickup_point: "María Luisa Santander 199", drop_point: "Tupper 1999", pickup_datetime: "2022-04-15 02:30:00", country: "Chile", city: "Santiago", comune: "Santiago", user_id: user6.id, car_id: car4.id)
application5 = Application.create!(confirmation_status: "Pending", price: 40, pickup_point: "Bonpland 2457", drop_point: "Av. Santiago de Compostela 3900", pickup_datetime: "2022-05-01 03:00:00", country: "Argentina", city: "Buenos Aires", comune: "Buenos Aires", user_id: user4.id, car_id: car2.id)
application6 = Application.create!(confirmation_status: "Confirmed", price: 50000, pickup_point: "Carlos Peña Otaegui 9745", drop_point: "Av. Miraflores 6661", pickup_datetime: "2022-02-05 04:00:00", country: "Chile", city: "Santiago", comune: "Renca", user_id: user9.id, car_id: car6.id)

puts "creando reviews"
# 4. create a review for that user
review1 = Review.create!(rating: 5, comment: "Excelente conductor", user_id: user1.id)
review2 = Review.create!(rating: 4, comment: "Buen conductor", user_id: user10.id)


puts "creando bookings"
# 5. create a booking for that user
booking1 = Booking.create!(status: "Confirmed", user_id: user2.id, application_id: application1.id , car_id: car1.id, review_id: review1.id)
booking2 = Booking.create!(status: "Confirmed", user_id: user9.id, application_id: application6.id , car_id: car6.id, review_id: review2.id)
