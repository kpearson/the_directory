class BusinessesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]
	def index
		@businesses = Business.all
	end

	def show
		@business = Business.find_by params[:id]
	end

	def create
		@business = curent_user.business.build
	end

	def new
		@business = Business.new
	end

	def search
		@business = Business.find_by name: :q
		@categories = Categories.find_by name: :q
	end
end