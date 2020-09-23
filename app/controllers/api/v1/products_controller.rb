class Api::V1::ProductsController < ApplicationController

        def index 
            @products = Product.all 
            render json: @products
        end 

        def create
            @product = Product.new(product_params)
            if @product.save 
                render json: @product 
            else  
                render json: {error: 'Error, Could Not Save Product'}
            end 
        end 

        def show 
            @product = Product.find(params[:id])
            render json: @product
        end 

        def update 
            @product = Product.find(params[:id])
            render json: @product
        end 

 

     private 

        def set_product
            @product = Product.find(params[:product_id])
        end 

        def product_params 
            params.require(:product).permit(:name, :image_url, :rating, :description, :ingredients)
        end  


end
