class DemoController < ApplicationController

  def index
	# 4 formas de fazer a mesma coisa
  	render template: "demo/bazinga"
  	# render :template => "demo/hello"
  	# render "demo/hello"
  	# render "hello"
  end

  def hello
  	# render "index"
    @users = User.all
    @medicos = Medico.all

  end

  def bazinga
    @id   = params[:id]
    @name = params[:name]
    @page = params["page"]
  end

  def other_hello
    # it makes a new HTTP request, so it's different from render
  	redirect_to :controller => "demo", :action => "index"
  	# redirect_to "http://google.com"
  end

end
