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
== 20150216211654 CreateBabySteps: migrating ==================================
-- create_table(:baby_steps)
   -> 0.0022s
== 20150216211654 CreateBabySteps: migrated (0.0024s) =========================

###### #

###### #
###### #
###### #
###### #

