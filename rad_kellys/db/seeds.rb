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


user1 = User.create(email: "person1@person.com", password: "123456", first_name: "Person1", last_name: "Surname", address: "1 Street", phone: "1111111111")
user2 = User.create(email: "person2@person.com", password: "123456", first_name: "Person2", last_name: "One", address: "1 Street", phone: "1111111111")
user3 = User.create(email: "person3@person.com", password: "123456", first_name: "Person3", last_name: "Surname", address: "1 Street", phone: "1111111111")
user4 = User.create(email: "person4@person.com", password: "123456", first_name: "Person4", last_name: "Surname", address: "1 Street", phone: "1111111111")
user5 = User.create(email: "person5@person.com", password: "123456", first_name: "Person5", last_name: "Surname", address: "1 Street", phone: "1111111111")
user6 = User.create(email: "person6@person.com", password: "123456", first_name: "Person6", last_name: "Surname", address: "1 Street", phone: "1111111111")
user7 = User.create(email: "person7@person.com", password: "123456", first_name: "Person7", last_name: "Surname", address: "1 Street", phone: "1111111111")
user8 = User.create(email: "person8@person.com", password: "123456", first_name: "Person8", last_name: "Surname", address: "1 Street", phone: "1111111111")
user9 = User.create(email: "person9@person.com", password: "123456", first_name: "Person9", last_name: "Surname", address: "1 Street", phone: "1111111111")
user10 = User.create(email: "person10@person.com", password: "123456", first_name: "Person10", last_name: "Surname", address: "1 Street", phone: "1111111111")
user11 = User.create(email: "person11@person.com", password: "123456", first_name: "Person11", last_name: "Surname", address: "1 Street", phone: "1111111111")
user12 = User.create(email: "person12@person.com", password: "123456", first_name: "Person12", last_name: "Surname", address: "1 Street", phone: "1111111111")
user13 = User.create(email: "person13@person.com", password: "123456", first_name: "Person13", last_name: "Surname", address: "1 Street", phone: "1111111111")
user14 = User.create(email: "person14@person.com", password: "123456", first_name: "Person14", last_name: "Surname", address: "1 Street", phone: "1111111111")
user15 = User.create(email: "person15@person.com", password: "123456", first_name: "Person15", last_name: "Surname", address: "1 Street", phone: "1111111111")
user16 = User.create(email: "person163@person.com", password: "123456", first_name: "Person16", last_name: "Surname", address: "1 Street", phone: "1111111111")
user17 = User.create(email: "person17@person.com", password: "123456", first_name: "Person17", last_name: "Surname", address: "1 Street", phone: "1111111111")
user18 = User.create(email: "person18@person.com", password: "123456", first_name: "Person18", last_name: "Surname", address: "1 Street", phone: "1111111111")
user19 = User.create(email: "person193@person.com", password: "123456", first_name: "Person19", last_name: "Surname", address: "1 Street", phone: "1111111111")
user20 = User.create(email: "person20@person.com", password: "123456", first_name: "Person20", last_name: "Surname", address: "1 Street", phone: "1111111111")



item1 = user1.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item1.picture.attach(io: File.open('app/assets/images/items/item1.jpg'), filename: 'item1.jpg')

item2 = user2.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item2.picture.attach(io: File.open('app/assets/images/items/item2.jpg'), filename: 'item2.jpg')

item3 = user3.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item3.picture.attach(io: File.open('app/assets/images/items/item3.jpg'), filename: 'item3.jpg')

item4 = user4.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item4.picture.attach(io: File.open('app/assets/images/items/item4.jpg'), filename: 'item4.jpg')

item5 = user5.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item5.picture.attach(io: File.open('app/assets/images/items/item5.jpg'), filename: 'item5.jpg')

item6 = user6.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item6.picture.attach(io: File.open('app/assets/images/items/item6.jpg'), filename: 'item6.jpg')

item7 = user7.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item7.picture.attach(io: File.open('app/assets/images/items/item7.jpg'), filename: 'item7.jpg')

item8 = user8.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item8.picture.attach(io: File.open('app/assets/images/items/item8.jpg'), filename: 'item8.jpg')

item9 = user9.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item9.picture.attach(io: File.open('app/assets/images/items/item9.jpg'), filename: 'item9.jpg')

item10 = user10.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item10.picture.attach(io: File.open('app/assets/images/items/item10.jpg'), filename: 'item10.jpg')

item11 = user11.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item11.picture.attach(io: File.open('app/assets/images/items/item11.jpg'), filename: 'item11.jpg')

item12 = user12.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item12.picture.attach(io: File.open('app/assets/images/items/item12.jpg'), filename: 'item12.jpg')

item13 = user13.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item13.picture.attach(io: File.open('app/assets/images/items/item13.jpg'), filename: 'item13.jpg')

item14 = user14.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item14.picture.attach(io: File.open('app/assets/images/items/item14.jpg'), filename: 'item14.jpg')

item15 = user15.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item15.picture.attach(io: File.open('app/assets/images/items/item15.jpg'), filename: 'item15.jpg')

item16 = user16.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item16.picture.attach(io: File.open('app/assets/images/items/item16.jpg'), filename: 'item16.jpg')

item17 = user17.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item17.picture.attach(io: File.open('app/assets/images/items/item17.jpg'), filename: 'item17.jpg')

item18 = user18.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item18.picture.attach(io: File.open('app/assets/images/items/item18.jpg'), filename: 'item18.jpg')

item19 = user19.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item19.picture.attach(io: File.open('app/assets/images/items/item19.jpg'), filename: 'item19.jpg')

item20 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item20.picture.attach(io: File.open('app/assets/images/items/item20.jpg'), filename: 'item20.jpg')

item21 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item21.picture.attach(io: File.open('app/assets/images/items/item21.jpg'), filename: 'item21.jpg')

item22 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item22.picture.attach(io: File.open('app/assets/images/items/item22.jpg'), filename: 'item22.jpg')

item23 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item23.picture.attach(io: File.open('app/assets/images/items/item23.jpg'), filename: 'item23.jpg')

item24 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item24.picture.attach(io: File.open('app/assets/images/items/item24.jpg'), filename: 'item24.jpg')

item25 = user20.items.create(name: "NameOfBeard", category:"Fu-Manchu", colour:"light-brown", texture:"grizzly", days_to_cultivate:126, price:169.99, sold:false)
item25.picture.attach(io: File.open('app/assets/images/items/item25.jpg'), filename: 'item25.jpg')







puts "Seed complete!"