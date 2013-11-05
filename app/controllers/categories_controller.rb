class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@business = Business.find(params[:business_id])
		@category = @business.categories.create(category_params)
		redirect_to business_path(@business)
	end

	def edit
		@category = Category.find(paramd[:id])
	end

	def update
		@category = Category.find(paramd[:id])
		if @category.update(business_params)
			redirect_to "/categories/#{@category.id}"
		else
			render :edit
		end
	end

	def show
		@category = Category.find(params[:id])
	end

	private
	
	def category_params
		params.require(:category).permit(:name)		
	end

end
