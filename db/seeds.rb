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
#file = URI.open("https://trustmyscience.com/wp-content/uploads/2021/05/gravite-intense-etoiles-neutrons-les-rend-incroyablement-lisses-couv.jpeg")
restaurant1 =Restaurant.create!(name:"Acrux", adress:"Nantes", rating: 3, customer: customer1)
#restaurant1.photo.attach(io: file, filename: "restaurant1.png", content_type: "image/png")

#file = URI.open("https://www.rts.ch/2017/03/31/11/01/7657284.image?w=1280&h=720")
restaurant2 =Restaurant.create!(name:"Cajam", adress:"Nantes", rating: 4, customer: customer2)
#restaurant2.photo.attach(io: file, filename: "restaurant2.png", content_type: "image/png")

#file = URI.open("https://cdn.futura-sciences.com/sources/images/actu/supernova-vie-terre.jpeg")
restaurant3 =Restaurant.create!(name:"Céléno", adress:"Nantes", rating:5, customer: customer3)
#restaurant3.photo.attach(io: file, filename: "restaurant3.png", content_type: "image/png")

#file = URI.open("https://pbs.twimg.com/media/EUj5EVYX0AURjJK?format=jpg&name=small")
restaurant4 =Restaurant.create!(name:"Diadème", adress:"Nantes", rating: 5, customer: customer1)
#restaurant4.photo.attach(io: file, filename: "restaurant4.png", content_type: "image/png")

#file = URI.open("https://www.onefm.ch/wp-content/uploads/2020/04/nasa-cover.jpg")
restaurant5 =Restaurant.create!(name:"Electra", adress:"Nantes", rating:4, customer: customer4)
#restaurant5.photo.attach(io: file, filename: "restaurant5.png", content_type: "image/png")

#file = URI.open("https://static01.nyt.com/images/2020/07/07/science/23SCI-OUTTHERE-LIGO/23SCI-OUTTHERE-LIGO-mobileMasterAt3x.jpg")
restaurant6 =Restaurant.create!(name:"Ferkad ", adress:"Nantes", rating:3, customer: customer4)
#restaurant6.photo.attach(io: file, filename: "restaurant6.png", content_type: "image/png")

#file = URI.open("https://epsilon.aeon.co/images/78ba87e7-7198-4468-81b5-500c505d5bc8/header_essay-gettyimages-1237093074.jpg")
restaurant7 =Restaurant.create!(name:"Gemma", adress:"Nantes", rating:4, customer: customer2)
#restaurant7.photo.attach(io: file, filename: "restaurant7.png", content_type: "image/png")

#file = URI.open("https://www.riken.jp/news-pubs-en/research-news-en/2020-research-en/RRFY20190049.jpg")
restaurant8 =Restaurant.create!(name:"Hydor ", adress:"Nantes", rating:5, customer: customer1)
#star8.photo.attach(io: file, filename: "restaurant8.png", content_type: "image/png")

#file = URI.open("https://imageio.forbes.com/blogs-images/startswithabang/files/2019/12/scaledown.jpg?format=jpg&width=960")
restaurant9 =Restaurant.create!(name:"Izar ", adress:"Nantes", rating: 1, customer: customer3)
#restaurant9.photo.attach(io: file, filename: "restaurant9.png", content_type: "image/png")

#file = URI.open("https://images.unsplash.com/photo-1484589065579-248aad0d8b13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=459&q=80")
restaurant10 =Restaurant.create!(name:"Jabbah", adress:"Nantes", rating: 5, customer: customer2)
#restaurant10.photo.attach(io: file, filename: "restaurant10.png", content_type: "image/png")


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
