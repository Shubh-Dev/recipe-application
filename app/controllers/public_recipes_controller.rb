class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true).order('created_at DESC')
  end
end
