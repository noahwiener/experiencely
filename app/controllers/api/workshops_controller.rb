class Api::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.all
    render :index
  end

  # will I need a show action?  Probably, right?

end
