module TripsHelper
  def get_place_info(place_id)
    @client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API"])
    @client.spot(place_id)
  end
end
