require 'faker'

# Create Users
10.times do
  user = User.new(
    name:      Faker::Name.name,
    email:     Faker::Internet.email,
    password:  Faker::Lorem.characters(10)
    )
user.skip_confirmation!
user.save!
end

users = User.all

# Create Items

20.times do 
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
    )
  
end

items = Item.all

user = User.first
user.skip_confirmation!
user.update_attributes!(
  email:'vcooper_us@yahoo.com',
  password: 'helloworld')


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created" 
r.create(name: 'Emanuel', city: cities.first)
