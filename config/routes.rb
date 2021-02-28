Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get '/home' => "home#index"
      
      # mount_devise_token_auth_for 'User', at: 'auth' 

      resources :dish_types, only: [:index, :show]
      resources :dishes, only: [:index, :show]
      resources :menus, only: [:index, :show]
      resources :menu_items, only: [:index, :show]
    end
  end
  

  root to: "home#index"
end
