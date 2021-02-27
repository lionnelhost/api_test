module Api
    module V1
        class DishesController < ApplicationController
            before_action :set_dish, only: [:show, :edit, :update, :destroy]
            def index 
                @dishes = Dish.all

                render json: @dishes
            end

            def show
                render json: @dish
            end

            private 
            
            def set_dish
                @dish = Dish.find(params[:id])
            end

            def dish_params
                params.require(:dish).permit(:name,:description, :price, :picture_url, :dish_type_id)
            end
        end
    end
end