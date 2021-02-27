module Api
    module V1
        class MenuItemsController < ApplicationController
            before_action :set_menu_item, only: [:show, :edit, :update, :destroy]
            def index 
                @menu_items = MenuItem.all

                render json: @menu_items
            end

            def show
                render json: @menu_item
            end

            private 
            
            def set_menu_item
                @menu_item = MenuItem.find(params[:id])
            end

            def menu_item_params
                params.require(:menu_item).permit(:dish_id, :menu_id)
            end
        end
    end
end