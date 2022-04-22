# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Start create Seeds"

puts "User"

User.create!(firstname: "Lionel", lastname: "Chamouilli", email: "lionel.chamouilli@gmail.com", password: "123456", password_confirmation: "123456")

puts "Cars"

car1 = Car.create!(brand: "RENAULT", model: "Zoé", description: "Cool electric car", price_per_day: 20, photo_url: "zoe.jpeg")
car2 = Car.create!(brand: "PEUGEOT", model: "3008", description: "Perfect for families", price_per_day: 40, photo_url: "peugeot3008.jpeg")
car3 = Car.create!(brand: "VOLKSWAGEN", model: "Golf VII", description: "A car for holidays", price_per_day: 35, photo_url: "golf7.jpeg")
car4 = Car.create!(brand: "MINI", model: "Zoé", description: "Perfect for a love week-end", price_per_day: 60, photo_url: "mini-cooper-sport.webp")

puts "End"
