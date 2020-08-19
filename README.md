# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : 2.7.1
* Rails Version : 6.0.2
* System dependencies : N/A

* Database : Mysql

Steps
1)intall the specified version of rails and ruby. Also install mysql
2) clone the repo. CD into the repo and run bundle intall
3) create db and migrate db
4)  than run rails db:seed
5) go to db console and use the robcop_development DB and execute the folloing query
	INSERT INTO products_promotions(promotion_id,product_id) VALUES (1,1),(1,2), (2,3),(2,2);
6) Used following urls to see the result of endpoints

a) http://localhost:3000/api/v1/products
b) http://localhost:3000/api/v1/products/by_department?department=pharmacy
c) http://localhost:3000/api/v1/products/by_promotion?code=5 

