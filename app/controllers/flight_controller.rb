class FlightController < ActionController::Base
  def search
    @flight_find = Flight.new
  end
end
