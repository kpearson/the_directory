class BusinessesController < ApplicationController
	before_action :authenticate_user!, [:new, :create]
	def index
		@business = Business.all
	end

	def show
		@business = Business.find_by params[:id]
	end

	def create
		@business = curent_user.businesses.build
	end

	def new
		@busness = Business.new
	end

	def search
		@business = Business.search_for params[:q]
	end
end
