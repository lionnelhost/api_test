module Api
    module V1
        class MenusController < ApplicationController
            before_action :set_menu, only: [:show, :edit, :update, :destroy]
            def index 
                @menus = Menu.all

                render json: @menus, include: 'menu_items'
            end

            def show
                render json: @menu, include: 'menu_items'
            end

            private 
            
            def set_menu
                @menu = Menu.find(params[:id])
            end

            def menu_params
                params.require(:menu).permit(:date)
            end
        end
    end
end