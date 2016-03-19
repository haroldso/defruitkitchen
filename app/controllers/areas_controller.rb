class AreasController < ApplicationController

  def index
    @area = Area.all
  end

  def show
    set_area
  end

  def new
  end

  def create
    @area = Area.new(area_params)
    if @area.save!
      redirect_to areas_path
    else
      render :new
    end
  end

  def edit
    set_area
  end

  def update
    set_area
    if @area.update(area_params)
      redirect_to areas_path
    else
      render :edit
    end
  end

  def destroy
    set_area
    @area.destroy
    redirect_to areas_path
  end

  private

  def area_params
    params.require(:area).permit(:name, :address, :city, :postcode, :state, :image)
  end

  def set_area
    @area = Area.find(params[:id])
  end

end
