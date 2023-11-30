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
  image: 'https://imgd.aeplcdn.com/1056x594/n/cw/ec/145655/x440-right-front-three-quarter-6.jpeg?isig=0&q=80&wm=2',
  name: 'Harley-Davidson X440',
  detail: 'Harley-Davidson X440 is a cruiser bike available in 3 variants and 4 colours. The Harley-Davidson X440 is powered by 440cc BS6 engine which develops a power of 27 bhp and a torque of 38 Nm. With both front and rear disc brakes, Harley-Davidson X440 comes up with anti-locking braking system.',
  price: 1000.0,
  finance_fee: 50.0,
  option_to_purchase_fee: 20.0,
  duration: 12
)

Bike.create!(
  image: 'https://imgd.aeplcdn.com/1056x594/n/cw/ec/102709/ntorq-125-right-front-three-quarter.jpeg?isig=0&q=80&wm=2',
  name: 'TVS Ntorq 125',
  detail: 'TVS Ntorq 125 is a motor scooter manufactured by TVS Motor Company in India. It is powered by a single cylinder, four stroke, 3 valve, TVS and delivers 6.9 kW at 7500 rpm. The scooter delivers a pick-up of 0 to 60 km/h in 6.5 seconds. The scooter 125 requires approximately 800 ml of engine oil.',
  price: 1200.0,
  finance_fee: 60.0,
  option_to_purchase_fee: 25.0,
  duration: 18
)

puts "bikes created succesfully"
