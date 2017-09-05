class FlightController < ActionController::Base
  def search
    @flight_find = Flight.new
    
    flight = params[:flight]
    if flight == nil
      puts 'there are currently no params entered for departure_id / From:'
      @flight_refine = false
    else
      flight_refine = params[:flight]
      date_refine   = params[:date]
      @flights        = []
      
      Flight.all.each do |flight|
        f = Flight.new
        if flight.departure_id.to_i == flight_refine[:departure_id].to_i
          if flight.arrival_id.to_i == flight_refine[:arrival_id].to_i
            f.departure_id   = flight.departure_id
            f.arrival_id     = flight.arrival_id 
            f.departure_time = flight.departure_time 
            @flights << f
          end
        end
      end 
    end
  end
end
