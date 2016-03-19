class FoodsController < ApplicationController

  def index
    @food = Food.all
  end

  def new
  end

  def create
    @food = Food.new(food_params)
    if @food.save!
      redirect_to foods_path
      flash[:notice] = "Food Successfully uploaded"
    else
      render :new
      flash[:warning] = "Food not created!"
    end
  end

  def show
    set_food
  end

  def edit
    set_food
  end

  def update
    set_food
    if @food.update(food_params)
      redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    set_food
    @food.destroy
    redirect_to foods_path
  end


  private

  def food_params
    params.require(:food).permit(:title, :description, :date, :price, :area_id, images: [])
  end

  def set_food
    @food = Food.find(params[:id])
  end

end
