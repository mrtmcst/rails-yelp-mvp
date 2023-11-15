# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '912374659',
  category: 'italian'
}
pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '946374856',
  category: 'italian'
}

pizza_west = {
  name: 'Pizza West',
  address: '56A My Man High St, London W1 6PQ',
  phone_number: '947264917',
  category: 'italian'
}

five_fields = {
  name: 'Five Fields',
  address: '8-9 Blacklands Terrace, London SW3 2SP',
  phone_number: '916253740',
  category: 'belgian'
}

club_gascon = {
  name: 'Club Gascon',
  address: '57 W Smithfield, London EC1A 9DS',
  phone_number: '910402385',
  category: 'french'
}

[dishoom, pizza_east, pizza_west, five_fields, club_gascon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
