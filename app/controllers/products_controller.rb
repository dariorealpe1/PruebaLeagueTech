class ProductsController < ApplicationController
	def index
		@products= Product.all
	end

	def new
		@products= Product.new

	end

	def create
		@products=Product.new(product_params.except(:storesId))
		@products.storesId = product_params[:storesId].split(" ")
		if @products.save
			redirect_to products_path
		else
			render :new
		end
	end


	def edit
		@products=Product.find(params[:id])

	end


	def update
		@products=Product.find(params[:id])
		if @products.update(product_params.except(:storesId))
			redirect_to products_path
			@products.storesId = product_params[:storesId].split(" ")
			@products.save
		else
			render :edit
		end

	end

	def destroy
		@products=Product.find(params[:id])
		@products.destroy
		redirect_to products_path
	end

	private
		def product_params
			params.require(:product).permit(:name,:color,:size,:price,:categoryId,:storesId)

		end


end

