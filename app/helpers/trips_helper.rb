module TripsHelper
  def get_place_info(place_id)
    @client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API"])
    @client.spot(place_id)
  end

  #for api calls
  def get_place_location(place_id)
    @client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API"])
    return { latitude: @client.spot(place_id).lat, longitude: @client.spot(place_id).lng }
  end

  def get_uber_info
  @uclient = Uber::Client.new do |config|
  config.server_token  = ENV["UBER_SERVER_TOKEN"]
  config.client_id     = ENV["UBER_CLIENT_ID"]
  config.client_secret = ENV["UBER_CLIENT_SECRET"]
  end
end

  def request_uber_price
    @uclient = Uber::Client.new do |config|
    config.server_token  = ENV["UBER_SERVER_TOKEN"]
    end
    @uclient.price_estimations(start_latitude: @start[:latitude], start_longitude: @start[:longitude], end_latitude: @end[:latitude], end_longitude: @end[:longitude])
  end

  def request_uber_time
    @uclient = Uber::Client.new do |config|
      config.server_token  = ENV["UBER_SERVER_TOKEN"]
    end
    @uclient.time_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])
  end

  def test_request_uber_time
    @uclient = Uber::Client.new do |config|
      config.server_token  = ENV["UBER_SERVER_TOKEN"]
    end
    @spot_loc = get_place_location("ChIJF7AFf-SAhYARJPDwj0CBm14")
    @time = @uclient.time_estimations(start_latitude: 37.785143, start_longitude: -122.396318, end_latitude: @spot_loc[:latitude], end_longitude: @spot_loc[:longitude])

    @price = @uclient.price_estimations(start_latitude: 37.785143, start_longitude: -122.396318, end_latitude: @spot_loc[:latitude], end_longitude: @spot_loc[:longitude])
    render 'trips/test_request_uber_time', layout: false
  end
end


