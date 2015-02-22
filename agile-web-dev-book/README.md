rails new <name-of-the-app>
	this will generate a boilerplate app name with the given parameter

rails g scaffold Product title:string description:text image_url:string price:decimal
	this is gonna generate a CRUD base app for a given model name

rake db:migrate
	this will create or run our migrations

rails server
	this will launch our app

rake test
	this will run tests

rake db:seed
	this will populate the given table with data that's specified
	inside the "seed.rb" file

rake db:rollback
	this is gonna delete the previous migration

	to see the data, we have to run again:
		rake db:migrate
		rake db:seed


