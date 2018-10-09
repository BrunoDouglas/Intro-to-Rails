class VehiclesController < ApplicationController
  def index
    page = 1
    if request.get?
      page = params[:page]
    end

      @v = Vehicle.page(page).per(5)
  end

  def show
  end

  def people
  end

  def neighbourhoods
  end
end
