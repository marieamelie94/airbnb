# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Flat.destroy_all
User.destroy_all


puts "creating user: Mr. Dick Creeper"
user1 = User.new(
  name: 'Mr. Dick Creeper',
  email: 'hooeee@nobrain.com',
  password: "secret",
  )
user1.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542967955/Flats/user_1.jpg'
user1.save!


puts "creating user: Mr. Crag Weirdo"
user2 = User.new(
  name: 'Mr. Pervertmann',
  email: 'hooeee2@nobrain.com',
  password: "blahah",
  photo: "user_2"
  )
user2.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542967955/Flats/user_2.jpg'
user2.save!

puts "creating user: Mr. Lars Jerky"
user3 = User.new(
  name: 'Edward Snowden',
  email: 'hooeee3@nobrain.com',
  password: "blahah",
  )
user3.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542967955/Flats/user_3.jpg'
user3.save!

puts "creating user: Ms. Kate Focker"
user4 = User.new(
  name: 'Ms. Kate Focker',
  email: 'hooeee4@nobrain.com',
  password: "blahah",
  )
user4.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542967955/Flats/user_4.jpg'
user4.save!

puts "creating user: Host4"
user5 = User.new(
  name: 'Convict n°45699',
  email: 'hooeee5@nobrain.com',
  password: "blahah",
  )
user5.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542984081/Flats/user_5.jpg'
user5.save!

user6 = User.new(
  name: 'Roger',
  email: 'rog@lewagon.com',
  password: "123456")
user6.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542985680/Flats/user_6.jpg'
user6.save!

puts "creating flat: Romantic shithole"
flat1 = Flat.new(name: 'Romantic shithole',
 user_id: user1.id,
 description: 'Full package creep exprecience. You will never feel the same again, Spend time with our Host, he will take a breath away.',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' Schönwalder Allee 26, 13587 Berlin',
 flat_type: 'room')

flat1.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542968546/Flats/flat1.jpg'
flat1.save!
# Flat.create!(name: 'Reepy', user_id: user_two.id)

puts "creating flat: Miserable cave"
flat2 = Flat.new(name: 'Poopmate',
 user_id: user2.id,
 description: 'Enjoy your toilette experience and your Host is going to make POOPING GREAT AGAIN!',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' Reuterstraße 23, 12043 Berlin',
 flat_type: 'room')
flat2.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542968570/Flats/flat2.jpg'
flat2.save

puts "creating flat: Edward Snowden"
flat3 = Flat.new(name: 'Government hideout',
 user_id: user3.id,
 description: 'Secret remote location, everyone is welcome unless you are CIA',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' German Village گوندی ئەڵمانی, سلێمانی, Iraq',
 flat_type: 'room')

flat3.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542968546/Flats/flat3.jpg'
flat3.save

puts "creating flat: Broken Home"
flat4 = Flat.new(name: 'Broken home for broken hearts',
 user_id: user4.id,
 description: 'Depressed? Express your true self. Our host will guide you!',
  price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' 97 Boulevard Voltaire, 75011 Paris, France',
 flat_type: 'room')
flat4.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542968546/Flats/flat4.jpg'
flat4.save

puts "creating flat: Someone died here"
flat5 = Flat.new(name: 'Someone died here',
 user_id: user5.id,
 description: 'Passionate location that will test your survival skills. (Cash only, the Host is incarcerated)',
 photo: 'flat5',
 price: 300,
 wifi: true,
 kitchen: true,
 air_conditionning: false,
 category: 'super trash',
 address: ' 67 Route de Revel, 31400 Toulouse, France',
 flat_type: 'room')
flat5.remote_photo_url = 'https://res.cloudinary.com/mas-cloud/image/upload/v1542968546/Flats/flat5.jpg'
flat5.save
