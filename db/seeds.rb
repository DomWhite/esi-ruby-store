# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

item_list = [
    ["Huel", 27.00, "Lazy food for lazy people"],
    ["Prepeeled Bananas", 1.50, "For when you're too good to peel"],
    ["Ropless skipping rope", 8.99, "Yep, it's just two handles"]
]

item_list.each do |name, price, description |
    Item.create(name: name, price: price, description: description)
end