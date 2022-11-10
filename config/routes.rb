Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :users, only: [:index]
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resource :recipe_foods, only: %w[new create destroy edit update]
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
end
