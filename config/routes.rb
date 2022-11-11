Rails.application.routes.draw do
  root to: 'foods#index' 
  devise_for :users
  
  
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resource :recipe_foods, only: %w[new create destroy edit update]
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :public_recipes, only: [:index]

end
