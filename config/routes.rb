Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  resources :cities
  resources :ships do
      resources :cabins
  end

  resources :cruises do
      member do
        patch '/add_date', to: 'cruises#add_date'
        patch '/add_city', to: 'cruises#add_city'
    end
  end
  
  resources :reservations do
    
  end
  
end
