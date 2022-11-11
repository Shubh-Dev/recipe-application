Rails.application.routes.draw do
  
  devise_for :users
  
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resource :recipe_foods, only: %w[new create destroy edit update]
  end
  
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
  root to: 'foods#index'  

end
