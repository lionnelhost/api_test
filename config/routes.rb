Rails.application.routes.draw do

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get '/' => "home#index"
      
      # mount_devise_token_auth_for 'User', at: 'auth' 

      resources :dish_types, only: [:index, :show]
      resources :dishes, only: [:index, :show]
      resources :menus, only: [:index, :show]
      resources :menu_items, only: [:index, :show]
      resources :users, only: [:index, :show]
      resources :orders, only: [:index, :show]
    end
  end
  

  
end
