class HomeController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]
	def index
		@businesses = Business.all
		@categories = Category.all
	end
end
