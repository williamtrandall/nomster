class PlacesController < ApplicationController

  def index
    @places = Place.paginate(:page => params[:page], per_page: 1)
  end

  def new
    @place = Place.new
    @places = Place.paginate(:page => params[:page], per_page: 1)
    #Need to get rid of the pagination while still defining places
  end

end
