include Faker
require 'user_data'

10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all

10.times do
  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} todos created"
