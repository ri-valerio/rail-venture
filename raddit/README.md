### first one of a series of great tutorials by https://github.com/mackenziechild/

---

Week 1 of my 12 Web Apps in 12 Weeks [http://mackenziechild.me/12-in-12/1/]

Original Github Repo:
https://github.com/mackenziechild/raddit

---

Steps:

###### rails new blog-news
###### blog-news
###### rails g scaffold link title:string url:string
###### rake db:migrate
###### rails s
###### bundle install
###### rails s
###### rails g devise:install
###### rails g devise:views
###### rails g deviser User
###### rake db:migrate

###### rails console
	// after of creating the relationship (has_many, belong_to) on rails class models:
	// @link = Link.first
	// @link.user
	// the result is nil

	// removed that relationship and tested again the same code
###### reload! // inside the rails console to reboot the code
	// the result is an error
	// put again those relationship in place and we are cool

###### rails g migration add_user_id_to_links user_id:integer:index
###### rake db:migrate

###### rails console
	// Link.connection to establish the connection between model classes
	// Link
	// then changed the code a little bit to add the needed logic and:
	// @link = Link.last
	// @link.user // and we can see that the user_id is not null
	// so we can perform queries like
	// @link.user.email
	// puts Link.all.to_yaml  // nice formatted output

###### bundle install
###### rails g acts_as_votable:migration
###### rake db:migrate
######  rails g scaffold Comment link_id:integer:index body:text user:references --skip-stylesheets
######  rake db:migrate
######  bundle install
######  rake routes
######  rails g migration add_name_to_users name:string
######  rake db:migrate
