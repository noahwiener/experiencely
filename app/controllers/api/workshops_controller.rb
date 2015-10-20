class Api::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.all
    render :index
  end

  def show
    @workshop = Workshop.find(params[:id])
    render :show
  end


end
