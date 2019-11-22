class StoresController < ApplicationController

    def index 
        @stores = Store.all 
        render json: @stores, status: :ok
        
    end

    def create 
        @store = Store.new(store_params)
        if @store.save 
            render json: @store, status: :created
        else 
            render json: @store.errors, status: :unprocessable_entity
        end

    end

    def show 
        @store = Store.find(params[:id]) 

        render json: @store, status: :ok
    end

    def update 
        @store = Store.find(params[:id])
        if @store.update(store_params)
            render json: @store, status: :update
        else
            render @store.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @store = Store.find(params[:id])
        @store.destroy
        render json: {message: 'Your Store Has Been Deleted'}, status: :ok
    end


    private 

    def store_params 
        params.require(:store).permit(:name, :description)
    end

end
