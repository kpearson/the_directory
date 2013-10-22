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

	def edit
		@business = Business.find(params[:id])
	end

	def update
		@business = Business.find(params[:id])
		if @business.save
			redirect_to "/businesses/#{@business.id}"		
	end

	def search
		@business = Business.find_by name: :q
		@category = Category.find_by name: :q
	end
end