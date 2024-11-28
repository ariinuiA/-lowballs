# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Item.destroy_all
User.destroy_all

user1 = User.create(first_name: "Jacob", last_name: "Nolose", email: "a@a.a", password: "123456", phone_number: "123")
user2 = User.create(first_name: "Bella", last_name: "Ponel", email: "b@b.b", password: "123456", phone_number: "321")

item1 = Item.create(title: "Monopoly", description: "A board game that can be played by 4-8 people", price: "500", user: user1)
item2 = Item.create(title: "Battleship", description: "Battle against ", price: "100", user: user1)
item3 = Item.create(title: "Connect 4", description: "Connect 4 to win", price: "400", user: user2)
item4 = Item.create(title: "Catan", description: "Cool game", price: "1000", user: user2)

Booking.create(user: user1, item: item3)
Booking.create(user: user1, item: item4)
Booking.create(user: user2, item: item1)
Booking.create(user: user2, item: item2)
