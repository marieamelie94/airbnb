# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Flat.destroy_all

puts "creating user: Mr. Dick Creeper"
user1 = User.create!(
  name: 'Mr. Dick Creeper',
  email: 'hooeee@nobrain.com',
  password: "secret",
  photo: "user_1"
  )

puts "creating user: Mr. Crag Weirdo"
user2 = User.create!(
  name: 'Mr. Crag Weirdo',
  email: 'hooeee2@nobrain.com',
  password: "blahah",
  photo: "user_2"
  )

puts "creating user: Mr. Lars Jerky"
user3 = User.create!(
  name: 'Mr. Lars Jerky',
  email: 'hooeee3@nobrain.com',
  password: "blahah",
  photo: "user_3"
  )

puts "creating user: Ms. Kate Focker"
user4 = User.create!(
  name: 'Ms. Kate Focke',
  email: 'hooeee4@nobrain.com',
  password: "blahah",
  photo: "user_4"
  )

puts "creating user: Host4"
user5 = User.create!(
  name: 'Host5',
  email: 'hooeee5@nobrain.com',
  password: "blahah",
  photo: "user_5"
  )


puts "creating flat: Romantic shithole"
Flat.create!(name: 'Romantic shithole',
 user_id: user1.id,
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

puts "creating flat: Miserable cave"
Flat.create!(name: 'Miserable cave',
 user_id: user2.id,
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

puts "creating flat: Smelly poopyard"
Flat.create!(name: 'Smelly poopyard',
 user_id: user3.id,
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
puts "creating flat: Broken Home"
Flat.create!(name: 'Broken Home',
 user_id: user4.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 photo: 'flat3',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' 97 Boulevard Voltaire, 75011 Paris, France',
 flat_type: 'room')

puts "creating flat: Someone died here"
Flat.create!(name: 'Someone died here',
 user_id: user5.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 photo: 'flat3',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' 67 Route de Revel, 31400 Toulouse, France',
 flat_type: 'room')
