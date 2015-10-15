class Api::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.where('date > ?', Date.today).order('date')
    render :index
  end

  # will I need a show action?  Probably, right?

end
