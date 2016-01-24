module TripsHelper
  def get_place_info(place_id)
    @client = GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
    return @client.spot(place_id)
  end

  #for api calls
  def get_place_location(place_id)
    @client = GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])
    return { latitude: @client.spot(lat), longitude: @client.spot(lng) }
  end

  def get_uber_info
  @client = Uber::Client.new do |config|
  config.server_token  = ENV["UBER_SERVER_TOKEN"]
  config.client_id     = ENV["UBER_CLIENT_ID"]
  config.client_secret = ENV["UBER_CLIENT_SECRET"]
  end

  def request_uber_price
    @client = Uber::Client.new do |config|
    config.server_token  = ENV["UBER_SERVER_TOKEN"]
    end
    @client.price_estimations(start_latitude: @start[:latitude], start_longitude: @start[:longitude], end_latitude: @end[:latitude], end_longitude: @end[:longitude])
  end

  def request_uber_time
  @client = Uber::Client.new do |config|
  config.server_token  = "YOUR_SERVER_TOKEN"
  end
  @client.time_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])
  end
end
end

