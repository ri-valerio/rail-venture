#### moved the gem: gem 'sqlite3' to [group :development, :test]
	 to prevent conflicts with heroku platform....and then:

#### learned about the meaning of the version number in each gem:

examples:
	gem 'rails', '4.2.0'     	# it will use exactly just this version
	gem 'sass-rails', '~> 5.0'  # it will use new versions but in the specified
							      released version (5.1, 5.2, 5.3, ...)
	gem 'uglifier', '>= 1.3.0'  # it will install the latest but only if it is
								  greater than the specified version
	gem 'sqlite3'				# it will automatically install the latest
								  greatest version

#### to prevent conflicts in applications that will be deployed it's usually good
	 practice to write all the gems with the exact number version, offcourse
	 the other spectrum is also true if we are absolutly sure about...

#### heroku setup:

	* heroku uses the PostgreSQL database so I add its gem:

		gem 'pg', '0.18.1'
		# gem 'pg', '~> 0.18.1'

	* heroku also uses another gem to serve static assets such as images
	  and stylesheets:

	    gem 'rails_12factor', group: :production


so in the end, it becomes like this:

		group :production do
			gem 'pg', '0.18.1'
			gem 'rails_12factor', group: :production
		end


#### to prepare the system for deployment to production, we run <bundle install>
	 with a special flag to prevent the local installation of any production gems
	 (which in this case consists of the two above mentioned)


	 bundle install --without production


####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
####
