class BusinessesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]
	def index
		@businesses = Business.all
	end

	def show
		@business = Business.find(params[:id])
	end

	def create
		@business = Business.new(business_params)
		if @business.save
			redirect_to "/business/#{@business.id}"
		else
			render :new
		end
	end

	def new
		@business = Business.new
	end

	def edit
		@business = Business.find(params[:id])
	end

	def update
		@business = Business.find(params[:id])
		if @business.save(business_params)
			redirect_to "/businesses/#{@business.id}"
		else
			render :edit
		end
	end

	def search
		@business = Business.find_by name: :q
		@category = Category.find_by name: :q
	end

	private

	def business_params
		params.require(:business).permit(:name, :suite, :occupied, :user_id, :building_id)
	end
end