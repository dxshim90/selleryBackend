class ProductsController < ApplicationController

    def index 
        @products = Product.all 
        render json: @products, status: :ok
    end 

    def create 
        @product = Product.new(product_params)
        if @product.save 
            render json: @product, status: :created
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end 

    def show 
        @product = Product.find(params[:id])
        render json: @product, status: :ok
    end 

    def update 
        @product = Product.find(params[:id])
        if @product.update(product_params)
            render json: @product, status: :update
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end 

    def destroy 
        @product = Product.find(params[:id])
        @product.destroy 
        render json: {message: 'Product Has Been Deleted'}
    end

    private 

    def product_params 
        params.require(:product).permit(:title, :description, :store_id)
    end

end
