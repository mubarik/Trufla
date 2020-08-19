# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(id: 1, name: "Pharmacy")
Product.create(id: 1, name: "anitbiotics", price: 20.0, department_id: 1)
Product.create(id: 2, name: "painkiller", price: 15.0, department_id: 1)
Product.create(id: 3, name: "cream", price: 25.99, department_id: 1)
Promotion.create(id: 1, code: 5, status: "active", discount: 5)
Promotion.create(id: 2, code: 6, status: "active", discount: 10)

# just run this in DBconsole afther seeds
# INSERT INTO products_promotions(promotion_id,product_id) VALUES (1,1),(1,2), (2,3),(2,2);

