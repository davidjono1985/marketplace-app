# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Loading data..."

Order.destroy_all
Item.destroy_all
User.destroy_all


user1 = User.create(email: "person1@person.com", password: "123456", first_name: "Person1", last_name: "One", address: "1 Street", phone: "1111111111")
user2 = User.create(email: "person2@person.com", password: "123456", first_name: "Person2", last_name: "One", address: "1 Street", phone: "1111111111")
user3 = User.create(email: "person3@person.com", password: "123456", first_name: "Person3", last_name: "One", address: "1 Street", phone: "1111111111")



user1.items.create(name: "1One", category:"catone", colour:"colour", texture:"texture", days_to_cultivate:1, price:1.11)
# Item.create(name: "1Two", category:"cattwo", colour:"colour", texture:"texture", days_to_cultivate:2, price:2.22, user_id:18)
# Item.create(name: "1Three", category:"catthree", colour:"colour", texture:"texture", days_to_cultivate:3, price:33.33, user_id:18)
# Item.create(name: "1Four", category:"catfour", colour:"colour", texture:"texture", days_to_cultivate:4, price:4.44, user_id:18)
# Item.create(name: "1Five", category:"catfive", colour:"colour", texture:"texture", days_to_cultivate:5, price:5.55, user_id:18)

# Item.create(name: "1One", category:"catone", colour:"colour", texture:"texture", days_to_cultivate:1, price:1.11, user_id:19)
# Item.create(name: "1Two", category:"cattwo", colour:"colour", texture:"texture", days_to_cultivate:2, price:2.22, user_id:19)
# Item.create(name: "1Three", category:"catthree", colour:"colour", texture:"texture", days_to_cultivate:3, price:33.33, user_id:19)
# Item.create(name: "1Four", category:"catfour", colour:"colour", texture:"texture", days_to_cultivate:4, price:4.44, user_id:19)
# Item.create(name: "1Five", category:"catfive", colour:"colour", texture:"texture", days_to_cultivate:5, price:5.55, user_id:19)

# Item.create(name: "1One", category:"catone", colour:"colour", texture:"texture", days_to_cultivate:1, price:1.11, user_id:20)
# Item.create(name: "1Two", category:"cattwo", colour:"colour", texture:"texture", days_to_cultivate:2, price:2.22, user_id:20)
# Item.create(name: "1Three", category:"catthree", colour:"colour", texture:"texture", days_to_cultivate:3, price:33.33, user_id:20)
# Item.create(name: "1Four", category:"catfour", colour:"colour", texture:"texture", days_to_cultivate:4, price:4.44, user_id:20)
# Item.create(name: "1Five", category:"catfive", colour:"colour", texture:"texture", days_to_cultivate:5, price:5.55, user_id:20)



puts "Seed complete!"