module Api
    module V1
        class DishTypesController < ApplicationController 
            before_action :set_dish_type, only: [:show, :edit, :update, :destroy]
            def index 
                @dish_types = DishType.all

                render json: @dish_types
            end

            def show
                render json: @dish_type
            end

            private 
            
            def set_dish_type
                @dish_type = DishType.find(params[:id])
            end

            def dish_type_params
                params.require(:dish_type).permit(:label,:extra)
            end
        end
    end  
end