class FoodsController < ApplicationController
  def index
    @foods = current_user.foods.all
  end

  def new
    @food = Food.new
  end

  def create
    @new_food = current_user.foods.new(food_params)
    if @new_food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
