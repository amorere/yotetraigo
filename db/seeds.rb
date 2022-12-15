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
#user5 = User.create!(email: "skinled@lilspam.com", password: "wgO2820uP", first_name: "Santiago", last_name: "Kinled", date_of_birth: "1992-02-03", driver_license_expiry: "2025-02-02", phone_number: "131418881", is_driver: false, dni: "87658764", insurance: true, driver_license_dni: "30104321", criminal_record: "No")
#user6 = User.create!(email: "hurrybush@realquickemail.com", password:"0xezE11db", first_name: "Harry", last_name: "Bush", date_of_birth: "1990-02-03", driver_license_expiry: "2026-03-05", phone_number: "199915161", is_driver: false, dni: "87687764", insurance: true, driver_license_dni: "30004321", criminal_record: "Yes")
#user7 = User.create!(email:"layerseverybody@snakebutt.com", password: "93N6Q7o4h", first_name: "Layla", last_name: "Ryboy", date_of_birth: "1995-03-08", driver_license_expiry: "2027-03-05", phone_number: "131411010", is_driver: false, dni: "00087764", insurance: true, driver_license_dni: "30005551", criminal_record: "No")
#user8 = User.create!(email: "armylesson@hypenated.com", password: "4DoIM8YY0", first_name: "Armando", last_name: "Lezon", date_of_birth: "1989-11-11", driver_license_expiry: "2023-01-01", phone_number: "888915161", is_driver: true, dni: "82227764", insurance: true, driver_license_dni: "32224321", criminal_record: "No")
#user9 = User.create!(email: "discovertill@lilspam.com", password: "F6TpqhD52", first_name: "Darren", last_name: "Till", date_of_birth: "1991-10-03", driver_license_expiry: "2022-10-03", phone_number: "191315161", is_driver: false, dni: "87131764", insurance: false, driver_license_dni: "30131321", criminal_record: "No")
#user10 = User.create!(email: "packstretch@sociallymediocre.com", password: "0x8zE11db", first_name: "Paco", last_name: "Stretch", date_of_birth: "1985-02-03", driver_license_expiry: "2025-03-05", phone_number: "193435161", is_driver: true, dni: "876343764", insurance: true, driver_license_dni: "3434321", criminal_record: "No")
#user11 = User.create!(email: "feeldirt@snakebutt.com", password: "Cd45AJw70", first_name: "Fernando", last_name: "Dirt", date_of_birth: "1993-04-08", driver_license_expiry: "2023-05-05", phone_number: "161941010", is_driver: true, dni: "611947764", insurance: true, driver_license_dni: "41695551", criminal_record: "No")
#user12 = User.create!(email: "goessoftly@spamsandwich.com", password: "4xdiCg37C", first_name: "Gonzalo", last_name: "Softly", date_of_birth: "1991-12-12", driver_license_expiry: "2023-12-12", phone_number: "892415161", is_driver: true, dni: "85761764", insurance: true, driver_license_dni: "32224321", criminal_record: "No")
#user13 = User.create!(email: "foughtcloser@thespamfather.com", password: "9eeX9u2G3", first_name: "Fernando", last_name: "Closer", date_of_birth: "1981-10-03", driver_license_expiry: "2023-10-11", phone_number: "191666161", is_driver: false, dni: "87131666", insurance: false, driver_license_dni: "36661321", criminal_record: "No")
#user14 = User.create!(email: "presentspider@thespamfather.com", password: "90j2LTnk7", first_name: "Paco", last_name: "Spider", date_of_birth: "1985-02-03", driver_license_expiry: "2025-03-05", phone_number: "222435161", is_driver: true, dni: "222343764", insurance: true, driver_license_dni: "2224321", criminal_record: "No")
#user15 = User.create!(email: "shinningeasy@thespamfather.com", password: "3pP51t40v", first_name: "Tiffany", last_name: "Easy", date_of_birth: "1993-04-08", driver_license_expiry: "2023-06-05", phone_number: "111141010", is_driver: true, dni: "611000764", insurance: true, driver_license_dni: "41695111", criminal_record: "No")
#user16 = User.create!(email: "materialmight@itsjiff.com", password: "w3C689CMX", first_name: "Matias", last_name: "Might", date_of_birth: "1991-08-08", driver_license_expiry: "2023-08-08", phone_number: "892415999", is_driver: false, dni: "85761999", insurance: true, driver_license_dni: "32999321", criminal_record: "No")




puts "creando autos"
car1 = Car.create!(brand: "Toyota", model: "Corolla", color: "Black", plate: "ABC123", insurance_other_drivers: true, transmission: "Manual", user_id: user2.id)
car2 = Car.create!(brand: "Mazda", model: "btx5", color: "Green", plate: "CBA345", insurance_other_drivers: true, transmission: "Automatic", user_id: user2.id)
car3 = Car.create!(brand: "Mazda", model: "miata", color: "Red", plate: "XXX619", insurance_other_drivers: true, transmission: "Manual", user_id: user4.id)
#car4 = Car.create!(brand: "Mini", model: "Cooper", color: "Blue", plate: "ACD666", insurance_other_drivers: true, transmission: "Manual", user_id: user6.id)
#car5 = Car.create!(brand: "Ford", model: "Escort", color: "Black", plate: "SEX369", insurance_other_drivers: true, transmission: "Manual", user_id: user7.id)
#car6 = Car.create!(brand: "Ford", model: "Fiesta", color: "White", plate: "XZX696", insurance_other_drivers: true, transmission: "Manual", user_id: user9.id)

puts "creando applications"
application1 = Application.create!(confirmation_status: "Pendiente", price: 45000, pickup_point: "Av. Lonquén 16691", drop_point: "Santa Blanca 1942", pickup_datetime: "2022-03-11 02:30:00", country: "Chile", city: "santiago", comune: "Lo Barnechea", user_id: user2.id, car_id: car1.id)
application2 = Application.create!(confirmation_status: "Pendiente", price: 35, pickup_point: "Uriarte 2116", drop_point: "Echeverría 2666", pickup_datetime: "2022-07-12 03:30:00", country: "Argentina", city: "buenos aires", comune: "Belgrano", user_id: user4.id, car_id: car2.id)
application3 = Application.create!(confirmation_status: "Cerrado", price: 48, pickup_point: "Uno Sur 64", drop_point: "Los Sauzales 2296", pickup_datetime: "2022-03-10 04:30:00", country: "Chile", city: "Santiago", comune: "Batuco", user_id: user2.id, car_id: car1.id)
application4 = Application.create!(confirmation_status: "Cerrado", price: 25000, pickup_point: "Tupper 1999", drop_point: "María Luisa Santander 199", pickup_datetime: "2022-04-15 02:30:00", country: "Chile", city: "Santiago", comune: "Santiago", user_id: user4.id, car_id: car2.id)
#application5 = Application.create!(confirmation_status: "Pending", price: 40000, pickup_point: "Av. Santiago de Compostela 3900", drop_point: "Bonpland 2457", pickup_datetime: "2022-05-01 03:00:00", country: "Argentina", city: "Buenos Aires", comune: "Buenos Aires", user_id: user4.id, car_id: car2.id)
#application6 = Application.create!(confirmation_status: "Pending", price: 50, pickup_point: "Av. Miraflores 6661", drop_point: "Carlos Peña Otaegui 9745", pickup_datetime: "2022-02-05 04:00:00", country: "Chile", city: "Santiago", comune: "Renca", user_id: user9.id, car_id: car6.id)
#application7 = Application.create!(confirmation_status: "Pending", price: 15000, pickup_point: "Av. El Salto 4950", drop_point: "Sagaro 430", pickup_datetime: "2022-01-01 05:00:00", country: "Chile", city: "Santiago", comune: "Huechuraba", user_id: user2.id, car_id: car4.id)
#application8 = Application.create!(confirmation_status: "Pending", price: 25000, pickup_point: "Av. El Salto 4950", drop_point: "Lucaro 9323", pickup_datetime: "2022-01-01 05:00:00", country: "Chile", city: "Santiago", comune: "Huechuraba", user_id: user9.id, car_id: car6.id)

puts "creando ofertas"
oferta1 = Offer.create!(price: 30000, status: "Pendiente", user_id: user3.id, application_id: application1.id)

puts "creando reviews"
# 4. create a review for that user
review1 = Review.create!(rating: 5, comment: "Excelente conductor", user_id: user1.id)
review2 = Review.create!(rating: 4, comment: "Buen conductor", user_id: user1.id)
review3 = Review.create!(rating: 3, comment: "Regular el conductor", user_id: user1.id)
review4 = Review.create!(rating: 2, comment: "Mal conductor", user_id: user3.id)
# agregando reviews para demo
review5 = Review.create!(rating: 4, comment: "Me gustó lo preocupado que fue al esperarnos y ayudarnos", user_id: user1.id)
review6 = Review.create!(rating: 5, comment: "Excelente conductor, nos salvó de una encerrona debido a sus habilidades al volante", user_id: user1.id)
review7 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
# demo validacion con mati"
review8 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review9 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review10 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review11 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review12 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review13 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review14 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)
review15 = Review.create!(rating: 4, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user3.id)
review16 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)
review17 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)
review18 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)
review19 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)
review20 = Review.create!(rating: 5, comment: "Muy amable y con un acento distinto, responsable al volante", user_id: user1.id)

puts "creando bookings"
# 5. create a booking for that user
booking1 = Booking.create!(status: "Finalizado", user_id: user2.id, application_id: application3.id , car_id: car1.id, review_id: review1.id)
#booking2 = Booking.create!(status: "Confirmed", user_id: user9.id, application_id: application6.id , car_id: car6.id, review_id: review2.id)
#booking3 = Booking.create!(status: "Confirmed", user_id: user2.id, application_id: application7.id , car_id: car4.id, review_id: review3.id)
#booking4 = Booking.create!(status: "Confirmed", user_id: user9.id, application_id: application8.id , car_id: car6.id, review_id: review4.id)
# agregando bookings para demo
booking5 = Booking.create!(status: "Finalizado", user_id: user2.id, application_id: application4.id , car_id: car1.id, review_id: review1.id)
#booking6 = Booking.create!(status: "Confirmed", user_id: user2.id, application_id: application3.id , car_id: car1.id, review_id: review1.id)
#booking7 = Booking.create!(status: "Confirmed", user_id: user2.id, application_id: application4.id , car_id: car1.id, review_id: review1.id)
