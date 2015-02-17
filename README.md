# rails-venture :rocket:

###### rails new <app-name> #
example:
 rails new baby-steps-in-rails

###### rails server #

###### rails generate <controller-name> [action-name] [another-action-name] [and-so-on] #

example:
   rails generate controller index index hello

      create  app/controllers/index_controller.rb
       route  get 'index/hello'
       route  get 'index/index'
      invoke  erb
      create    app/views/index
      create    app/views/index/index.html.erb
      create    app/views/index/hello.html.erb
      invoke  test_unit
      create    test/controllers/index_controller_test.rb
      invoke  helper
      create    app/helpers/index_helper.rb
      invoke    test_unit
      create      test/helpers/index_helper_test.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/index.js.coffee
      invoke    scss
      create      app/assets/stylesheets/index.css.scss


###### rails generate model <database-name> [db-field:type] [another-db-field:type] [and-so-on] #

example:
   rails g model baby_steps title:string description:text num_followers:integer

      invoke  active_record
      create    db/migrate/20150216211654_create_baby_steps.rb
      create    app/models/baby_steps.rb
      invoke    test_unit
      create      test/models/baby_steps_test.rb
      create      test/fixtures/baby_steps.yml

###### rake db:migrate #

output:

			== 20150216211654 CreateBabySteps: migrating
			-- create_table(:baby_steps)
			I-> 0.0022s
			== 20150216211654 CreateBabySteps: migrated (0.0024s)


---





###### rails new baby-steps-in-rails-scaffold #

###### rails generate scaffold <model-name> [db-field:type] [another-db-field:type] [and-so-on] #

example:
	rails generate scaffold blog tite:string description:text num_followers:integer
	   
      invoke  active_record
      create    db/migrate/20150216230443_create_blogs.rb
      create    app/models/blog.rb
      invoke    test_unit
      create      test/models/blog_test.rb
      create      test/fixtures/blogs.yml
      invoke  resource_route
       route    resources :blogs
      invoke  scaffold_controller
      create    app/controllers/blogs_controller.rb
      invoke    erb
      create      app/views/blogs
      create      app/views/blogs/index.html.erb
      create      app/views/blogs/edit.html.erb
      create      app/views/blogs/show.html.erb
      create      app/views/blogs/new.html.erb
      create      app/views/blogs/_form.html.erb
      invoke    test_unit
      create      test/controllers/blogs_controller_test.rb
      invoke    helper
      create      app/helpers/blogs_helper.rb
      invoke      test_unit
      create        test/helpers/blogs_helper_test.rb
      invoke    jbuilder
      create      app/views/blogs/index.json.jbuilder
      create      app/views/blogs/show.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/blogs.js.coffee
      invoke    scss
      create      app/assets/stylesheets/blogs.css.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.css.scss

######    rake db:migrate #
output:

		== 20150216224643 CreateBlogs: migrating 
		=========================
		-- create_table(:blogs)
		-> 0.0030s
		== 20150216224643 CreateBlogs: migrated (0.0032s) 
		================

###### rails server #

###### open http://localhost:3000/blog # (sometimes it changes for plural names =/)

---

###### rails console #
   
Loading development environment (Rails 4.2.0)

		2.2.0 :002 > Bazinga.create({title: "Hello Rails!", description: "this framework is really neat", num_followers: "10" })
		
--
		   (0.2ms)  begin transaction
		  SQL (0.4ms)  INSERT INTO "bazingas" ("title", "description", "num_followers", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["title", "Hello Rails!"], ["description", "this framework is really neat"], ["num_followers", 10], ["created_at", "2015-02-17 02:29:18.971448"], ["updated_at", "2015-02-17 02:29:18.971448"]]
		   (0.9ms)  commit transaction
		 => #<Bazinga id: 1, title: "Hello Rails!", description: "this framework is really neat", num_followers: 10, created_at: "2015-02-17 02:29:18", updated_at: "2015-02-17 02:29:18"> 
	
--
		2.2.0 :005 >   Bazinga.all
	
	  Bazinga Load (8.6ms)  SELECT "bazingas".* FROM "bazingas"
	 => #<ActiveRecord::Relation [#<Bazinga id: 1, title: "Hello Rails!", description: "this framework is really neat", num_followers: 10, created_at: "2015-02-17 02:29:18", updated_at: "2015-02-17 02:29:18">]> 


###### #
###### #
###### #

