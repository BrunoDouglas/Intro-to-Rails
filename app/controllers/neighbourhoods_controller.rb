class NeighbourhoodsController < ApplicationController
  def index
    require 'kaminari'
    page = 1
    if request.get?
      page = params[:page]
    end

      @neighbourhoods = Neighbourhood.page(page).per(5)
  end

  def show
  end
end
