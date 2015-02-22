# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Product.create(title: 'CoffeeScript',
 				description: %{<p>CoffeeScript is just JavaScript</p>},
 				image_url: "http://wegeeks.us/assets/coffeescript_logo-553d0e0b9fc0a816ef444280eeabc84d.png",
 				price: 12.12
 			   )
Product.create(title: 'Proframming Ruby',
 				description: %{<p>Ruby is awesome</p>},
 				image_url: "http://sebastien.ferre.io/assets/img/ruby.png",
 				price: 49.95
 			   )
