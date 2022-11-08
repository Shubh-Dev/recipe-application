class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    if @recipe_food.save
      redirect_to recipe_path(params[:recipe_id]),
                  flash: { success: "#{@recipe_food.food.name} has been attached successfully!" }
    else
      redirect_to recipe_path(params[:recipe_id]),
                  flash: { error: "Failed to attach #{@recipe_food.food.name}!" }
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
    params.permit(:food_id, :recipe_id, :quantity)
  end
end
