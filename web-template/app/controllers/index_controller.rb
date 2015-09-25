class IndexController < ApplicationController
	def index
	  #render :file => 'public/index.html' and return
	  render('index')
	end
end
