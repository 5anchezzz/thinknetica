class Route

  attr_accessor :station_from, :station_to, :intermediate_stations

  def initialize(station_from, station_to, intermediate_stations = [])
    @station_from = station_from
    @station_to = station_to
    @intermediate_stations = intermediate_stations
  end

  def add_intermediate_station(station)
    @intermediate_stations << station
  end

  def remove_intermediate_station(station)
    if @intermediate_stations.include?(station)
      @intermediate_stations.delete(station)
    else
      puts "Такой станции нет в этом маршруте."
    end
  end

  def show_all_stations
    all_stations = ([@station_from] + @intermediate_stations + [@station_to]).map(&:name).join(' - ')
    puts all_stations
  end

  def get_all_stations
    all_stations = [@station_from] + @intermediate_stations + [@station_to]
  end

end