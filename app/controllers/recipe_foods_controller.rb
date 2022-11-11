class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipe_food = RecipeFood.new(recipe_id: params[:recipe_id])
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.all
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    @foods = Food.all
    if @recipe_food.save
      redirect_to recipe_path(params[:recipe_id]),
                  flash: { success: "#{@recipe_food.food.name} has been attached successfully!" }
    else
      redirect_to recipe_path(params[:recipe_id]),
                  flash: { error: 'Something went wrong!' }

    end
  end

  def destroy
    @recipe_food = RecipeFood.find params[:id]
    @recipe_food.destroy!
    redirect_to recipe_path(params[:recipe_id]),
                flash: { success: "#{@recipe_food.food.name} has been detached successfully!" }
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:recipe_id, :food_id, :quantity)
  end
end
