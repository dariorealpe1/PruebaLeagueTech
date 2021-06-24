class StoresController < ApplicationController
	def index
		@stores= Store.all
	end

	def new
		@stores= Store.new
	end
	def create
		@stores=Store.new(stores_params.except(:productsId))
		@stores.productsId = stores_params[:productsId].split(" ")
		if @stores.save
			redirect_to stores_path
		else
			render :new
		end
	end


	def edit
		@stores=Store.find(params[:id])

	end

	def update
		@stores=Store.find(params[:id])
		if @stores.update(stores_params.except(:productsId))
			@stores.productsId = stores_params[:productsId].split(" ")
			@stores.save
			redirect_to stores_path
		else
			render :edit
		end

	end
	def destroy
		@stores=Store.find(params[:id])
		@stores.destroy
		redirect_to stores_path
	end



	private
		def stores_params
			params.require(:store).permit(:name,:street,:number,:zipCode,:city,:country,:productsId)
		end
end
