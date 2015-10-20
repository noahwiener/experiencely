class Api::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.all
    # @workshops = Workshop.where('date > ?', Date.today).order('date')
    render :index
  end

  def show
    @workshop = Workshop.find(params[:id])
    render :show
  end


end
