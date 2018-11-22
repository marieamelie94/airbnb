# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.delete_all
User.delete_all
puts "creating user"
user = User.create!(
  name: 'Host1',
  email: 'hooeee@nobrain.com',
  password: "blahah",
  photo: "user_1"
  )

puts "creating user"
user1 = User.create!(
  name: 'Host2',
  email: 'hooeee2@nobrain.com',
  password: "blahah",
  photo: "user_2"
  )

puts "creating user"
user2 = User.create!(
  name: 'Host3',
  email: 'hooeee3@nobrain.com',
  password: "blahah",
  photo: "user_3"
  )


puts "creating flats"
Flat.create!(name: 'Romantic shithole',
 user_id: user.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 photo: 'flat1',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' Schönwalder Allee 26, 13587 Berlin',
 flat_type: 'room')
# Flat.create!(name: 'Reepy', user_id: user_two.id)

puts "creating flats"
Flat.create!(name: 'Miserable cave',
 user_id: user1.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 photo: 'flat2',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' Reuterstraße 23, 12043 Berlin',
 flat_type: 'room')
# Flat.create!(name: 'Reepy', user_id: user_two.id)

puts "creating flats"
Flat.create!(name: 'Smelly poopyard',
 user_id: user2.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 photo: 'flat3',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' Rosenthaler Str. 67, 10119 Berlin',
 flat_type: 'room')
# Flat.create!(name: 'Reepy', user_id: user_two.id)
