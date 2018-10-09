class PeopleController < ApplicationController
  def index
    page = 1
    if request.get?
      page = params[:page]
    end

      @p = Person.page(page).per(5)
  end

  def show
    id = nil
    if request.get?
      id = params[:id]
    end
    @p = Person.find(id)
  end

  def neighbourhoods
    @n = show
  end
end
