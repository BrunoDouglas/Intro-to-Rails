class VehiclesController < ApplicationController
  def index
    page = 1
    if request.get?
      page = params[:page]
    end

      @v = Vehicle.order(:name).page(page).per(5)
  end

  def show
    id = nil
    if request.get?
      id = params[:id]
    end
    @vehicle = Vehicle.find(id)
  end

end
