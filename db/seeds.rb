# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'Cleaning database...'
Reservation.destroy_all
Restaurant.destroy_all
Customer.destroy_all

puts 'Creating user...'

customer1 = Customer.create!(first_name:"Hubert", last_name:"Farnsworth")
customer2 = Customer.create!(first_name:"Ruben", last_name:"Hernandez")
customer3 = Customer.create!(first_name:"Emmett", last_name:"Brown")
customer4 = Customer.create!(first_name:"John", last_name:"Hammond")
puts 'Creating stars...'
file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bakan-restaurante-mexcano-madrid-elle-4-1638198264.jpg")
restaurant1 = Restaurant.create!(name:"Acrux", adress:"Nantes", rating: 3)
restaurant1.photo.attach(io: file, filename: "restaurant1.png", content_type: "image/png")

file = URI.open("https://static.wixstatic.com/media/5cecee_78de0f63516c41f99bd9fe3b71dd2b13~mv2.jpg/v1/fill/w_560,h_572,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Image-empty-state.jpg")
restaurant2 = Restaurant.create!(name:"Cajam", adress:"Nantes", rating: 4)
restaurant2.photo.attach(io: file, filename: "restaurant2.png", content_type: "image/png")

file = URI.open("https://a.cdn-hotels.com/gdcs/production0/d904/1a2db549-b49d-4845-aa19-c9d72f4266c2.jpg")
restaurant3 = Restaurant.create!(name:"Céléno", adress:"Nantes", rating:5)
restaurant3.photo.attach(io: file, filename: "restaurant3.png", content_type: "image/png")

file = URI.open("https://media.revistaad.es/photos/620cbc911db9f1841aebdf15/16:9/w_2560%2Cc_limit/portada.jpg")
restaurant4 = Restaurant.create!(name:"Diadème", adress:"Nantes", rating: 5)
restaurant4.photo.attach(io: file, filename: "restaurant4.png", content_type: "image/png")

file = URI.open("https://www.yosilose.com/wp-content/uploads/2022/09/papatinte3.jpg")
restaurant5 = Restaurant.create!(name:"Electra", adress:"Nantes", rating:4)
restaurant5.photo.attach(io: file, filename: "restaurant5.png", content_type: "image/png")

file = URI.open("https://ingenieriademenu.com/wp-content/uploads/2022/02/letrero-restaurante.jpg")
restaurant6 = Restaurant.create!(name:"Ferkad ", adress:"Nantes", rating:3)
restaurant6.photo.attach(io: file, filename: "restaurant6.png", content_type: "image/png")

file = URI.open("https://media.traveler.es/photos/620b6fa93381f6cfa2f8329a/master/w_1600%2Cc_limit/maison-russeromainricard-restaurant_51611506565_o.jpg")
restaurant7 = Restaurant.create!(name:"Gemma", adress:"Nantes", rating:4)
restaurant7.photo.attach(io: file, filename: "restaurant7.png", content_type: "image/png")

file = URI.open("https://media.gq.com.mx/photos/6266e699a6124b05cd9e65e8/4:3/w_2663,h_1997,c_limit/restaurantes-Tulum-Grupo-Andersons.jpg")
restaurant8 = Restaurant.create!(name:"Hydor ", adress:"Nantes", rating:5)
star8.photo.attach(io: file, filename: "restaurant8.png", content_type: "image/png")

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSncBvyeBlWV3S165Y2SV-6WFopsYjY73kEYQ&usqp=CAU")
restaurant9 = Restaurant.create!(name:"Izar ", adress:"Nantes", rating: 1)
restaurant9.photo.attach(io: file, filename: "restaurant9.png", content_type: "image/png")

file = URI.open("https://eldiariony.com/wp-content/uploads/sites/2/2022/07/Restaurante-shutterstock_124542496.jpg?quality=60&strip=all&w=1200")
restaurant10 = Restaurant.create!(name:"Jabbah", adress:"Nantes", rating: 5)
restaurant10.photo.attach(io: file, filename: "restaurant10.png", content_type: "image/png")


puts 'Creating booking...'
reservation1 = Reservation.create!(
    restaurant:        restaurant1,
    customer:        customer2,
    reservation_date: "2022-11-22",
    status:      "accepted"
)
reservation2 = Reservation.create!(
    restaurant:        restaurant2,
    customer:        customer1,
    reservation_date: "2022-11-22",
    status:      "accepted"
)

reservation2 = Reservation.create!(
  restaurant:        restaurant8,
  customer:        customer4,
  reservation_date: "2022-12-18",
  status:      "accepted"
)

reservation3 = Reservation.create!(
    restaurant:        restaurant3,
    customer:        customer3,
    reservation_date: "2022-11-24",
    status:      "declined"
)

reservation4 = Reservation.create!(
  restaurant:        restaurant1,
  customer:        customer4,
  reservation_date: "2022-11-24",
  status:      "declined"
)
reservation5 = Reservation.create!(
  restaurant:        restaurant2,
  customer:        customer4,
  reservation_date: "2022-11-22",
  status:      "declined"
)
puts "finish"
