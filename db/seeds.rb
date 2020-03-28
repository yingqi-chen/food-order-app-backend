# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dish1 = Dish.create(name: "Sesame chicken", image:"sesame-chicken.jpg", price: 12 )
dish2 = Dish.create(name: "Beef broccoli", image: "beef-broccoli.jpg",price: 13)
dish3 = Dish.create(name: "Shrimp with vegetable", image: "shrimp-vegetable.jpg",price: 15)
dish4 = Dish.create(name: "Scallop with garlic saurce", image: "scallop-garlic-saurce.jpg",price: 18 )
dish5 = Dish.create(name: "Kung pao chicken", image: "kung-pao-chicken.jpg",price: 12)
dish6 = Dish.create(name: "Combination lo mein ", image: "combination-lo-mein.jpg", price: 15)
dish7 = Dish.create(name: "Combination chow mein", image: "combination-chow-mein.jpg",price: 15)
dish8 = Dish.create(name: "Happy family", image:"happy-family.jpg",price: 15 )
dish9 = Dish.create(name: "Live Lobster with ginger sauce", image: "lobster-ginger-saurce.jpg",price: 50 )
dish10 = Dish.create(name: "Steam whole fish", image: "steam-whole-fish.jpg",price:32 )

user1 = User.create(name:"u1" ,email: "u1@123.com", password: "123")
user2 = User.create(name: "u2" ,email: "u2@123.com", password: "123")

order1 = Order.create(date: DateTime.new(2001,3,5), user_id: user1.id, status: "finished", total:27 )
order2 = Order.create(date:DateTime.new(2002,3,5), user_id: user2.id,status: "submitted", total: 13 )
order3 = Order.create(date: DateTime.new(2001,3,5), user_id: user1.id, status: "finished", total: 30 )



order_dish1 = OrderDish.create(order_id: order1.id, dish_id: dish1.id )
order_dish2 = OrderDish.create(order_id: order2.id, dish_id: dish2.id )
order_dish3 = OrderDish.create(order_id: order1.id, dish_id: dish3.id )
order_dish4 = OrderDish.create(order_id: order3.id, dish_id: dish3.id )
order_dish5 = OrderDish.create(order_id: order3.id, dish_id: dish8.id )










