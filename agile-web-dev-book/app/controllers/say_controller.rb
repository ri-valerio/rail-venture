class SayController < ApplicationController

	attr_accessor :name, :greeting, :age

	def hello
		@files = Dir.glob("*")
	end

	def goodbye
	end

	protected
	def my_protected_method
# can be called both in the same instance and by
# other instances of the same class
	end

	private
	def my_private_method
# can be called only from within the same instance
	end

end
