# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

dog_array = []
dogsitter_array = []
city_array = []

6.times do |index|

city_array << City.create(id:index, city_name: Faker::Address.city)

dog_array << Dog.create(id: index, name: Faker::Name.name, city_name: city_array.sample)

dogsitter_array << Dogsitter.create(id: index, first_name: Faker::Name.first_name, city_name: city_array.sample)

end


