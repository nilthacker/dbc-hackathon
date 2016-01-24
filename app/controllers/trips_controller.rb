class TripsController < ApplicationController

  include TripsHelper

  def index
    if current_user
      @trips = current_user.trips
    end
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @places = current_user.trips.find(params[:trip_id]).trip_events
    @uclient = Uber::Client.new do |config|
      config.server_token  = ENV["UBER_SERVER_TOKEN"]
    end
    p @places
    p '*' * 90
    # @legs = @places
    # @places.each_with_index do |place, i|
    #    @start_loc = get_place_location(place[i].id)
    #    @end_loc = get_place_location(place[i+1].id)

    #    time = @uclient.time_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])

    #    price =  @uclient.price_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])
    # end
 end

 def create
    # take the zip code and/or address from the user and find all the nearby things
    # then using, ajax (in the view), hide the form and append each event row, followed by a transit row
    # from index form: event type, price point, intensity
  end
end
