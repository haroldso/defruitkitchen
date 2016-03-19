class HomepagesController < ApplicationController

  def index
    @food = Food.all
  end

end