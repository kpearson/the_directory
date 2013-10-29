class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to "/category/#{@category.id}"
		else
			render :new
		end
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
