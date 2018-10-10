class OwnersController < ApplicationController
  def index
    page = 1
    if request.get?
      page = params[:page]
    end

      @p = Owner.order(:name).page(page).per(5)
  end

  def show
    id = nil
    if request.get?
      id = params[:id]
    end
    @p = Owner.find(id)
  end
end
