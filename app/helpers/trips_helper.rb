module TripsHelper
  def get_place_info(place_id)
    @client = GooglePlaces::Client.new(GOOGLE_API_KEY)
    return @client.spot(place_id)
  end
end
