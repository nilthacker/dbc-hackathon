class TripsController < ApplicationController
  def index
    if current_user
      @trips = current_user.trips
    end
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @places = current_user.trips.find(params[:trip_id]).trip_events
  end

  def create
    # take the zip code and/or address from the user and find all the nearby things
    # then using, ajax (in the view), hide the form and append each event row, followed by a transit row
    # from index form: event type, price point, intensity
  end
end
