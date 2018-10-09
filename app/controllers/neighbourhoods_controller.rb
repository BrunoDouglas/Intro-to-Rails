class NeighbourhoodsController < ApplicationController
  def index
    page = 1
    if request.get?
      page = params[:page]
    end

      @neighbourhoods = Neighbourhood.page(page).per(5)
  end

  def show
    id = nil
    if request.get?
      id = params[:id]
    end
    @n = Neighbourhood.find(id)
  end

  def peope
    id = nil
    if request.get?
      id = params[:id]
    end
    @p = Neighbourhood.find(id).people
  end
end
