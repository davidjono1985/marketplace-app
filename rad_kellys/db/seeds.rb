# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Loading data..."

Item.destroy_all


Item.create(name: "One", category:"catone", colour:"colour", texture:"texture", days_to_cultivate:1, price:1.11, user_id:1)
Item.create(name: "Two", category:"cattwo", colour:"colour", texture:"texture", days_to_cultivate:2, price:2.22, user_id:1)
Item.create(name: "Three", category:"catthree", colour:"colour", texture:"texture", days_to_cultivate:3, price:33.33, user_id:1)
Item.create(name: "Four", category:"catfour", colour:"colour", texture:"texture", days_to_cultivate:4, price:4.44, user_id:1)
Item.create(name: "Five", category:"catfive", colour:"colour", texture:"texture", days_to_cultivate:5, price:5.55, user_id:1)

puts "Seed complete!"