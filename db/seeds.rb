# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all 

20.times do |index|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 23), email: "nom#{index}@yopmail.com")
end

20.times do 
	Event.create(start_date: "2019-12-25", duration: 30, title: Faker::Lorem.sentence(word_count: 5), description: Faker::Lorem.sentence(word_count: 25), price: Faker::Number.between(from: 2, to: 100), location: Faker::Nation.capital_city)
end 