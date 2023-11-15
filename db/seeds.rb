puts 'Cleaning your database'
puts '...'
puts '...'
Restaurant.destroy_all

puts 'Database cleaned'

puts 'Populating database'

10.times do
  Restaurant.create({
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
   })
   puts '...'
   puts 'One restaurant added'
   puts '...'
end

puts 'Finished populating'
