# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(first_name: "Jacob", last_name: "Nolose", email: "nolose@gmail.com", password: "123456", phone_number: "123")
User.create(first_name: "Bella", last_name: "Ponel", email: "ponel@gmail.com", password: "123456", phone_number: "321")
Item.create(title: "Monopoly", description: "A board game that can be played by 4-8 people", price: "500", user_id: 1, status: "available")
Item.create(title: "Battleship", description: "Battle against ", price: "100", user_id: 1, status: "available")
Item.create(title: "Connect 4", description: "Connect 4 to win", price: "400", user_id: 2, status: "available")
Item.create(title: "Catan", description: "Cool game", price: "1000", user_id: 2, status: "available")
Booking.create(user_id: 1, item_id: 3)
Booking.create(user_id: 2, item_id: 1)
