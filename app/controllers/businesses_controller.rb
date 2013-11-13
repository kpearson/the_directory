class BusinessesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]
	def index
		@businesses = Business.all
		@categories = Category.all
	end

	def show
		@business = Business.find(params[:id])
	end

	def new
		@business = Business.new
		@category = Category.new
	end

	def create
		@business = Business.new(business_params)
		if @business.save
			redirect_to "/business/#{@business.id}"
		else
			render :new
		end
	end

	def edit
		@business = Business.find(params[:id])
		@category = Business.find(params[:id])
		@categories = Category.all
	end

	def update
		@business = Business.find(params[:id])
		if @business.update(business_params)
			redirect_to "/businesses/#{@business.id}"
		else
			render :edit
		end
	end

	def delete
		@business = Business.find(params[:id])
		@business.destroy
		
	end

	def search
		@business = Business.find_by name: :q
		@category = Category.find_by name: :q
	end

	def list
		@business = Business.all
	end

	private

	def business_params
		params.require(:business).permit(:name, :suite, :occupied, :user_id, :building_id, :discription, :phone_num, :web_site)
	end

end