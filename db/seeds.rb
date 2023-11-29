# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Bike.create!(
  image: 'image_url_1',
  name: 'Bike 1',
  detail: 'Description of Bike 1',
  price: 1000.0,
  finance_fee: 50.0,
  option_to_purchase_fee: 20.0,
  duration: 12
)

Bike.create!(
  image: 'image_url_2',
  name: 'Bike 2',
  detail: 'Description of Bike 2',
  price: 1200.0,
  finance_fee: 60.0,
  option_to_purchase_fee: 25.0,
  duration: 18
)

puts "bikes created succesfully"
