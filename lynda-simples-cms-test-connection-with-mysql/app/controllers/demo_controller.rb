class DemoController < ApplicationController

  def index
	# 4 formas de fazer a mesma coisa
  	render template: "demo/hello"
  	# render :template => "demo/hello"
  	# render "demo/hello"
  	# render "hello"
  end

  def hello
  	render "index"
  end

  def other_hello
  	redirect_to :controller => "demo", :action => "index"
  	# redirect_to "http://google.com"
  end

end
