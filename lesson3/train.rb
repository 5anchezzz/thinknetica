class Train

  attr_accessor :number, :type, :number_of_wagons, :current_speed, :current_station, :current_position, :route

  def initialize(number, type, number_of_wagons)
    @number = number
    @type = type
    @number_of_wagons = number_of_wagons
    @current_speed = 0
    @current_station = Station.new('Railway depot')
  end

  def go_fast(speed)
    self.current_speed = speed
  end

  def slow_down
    self.current_speed = 0
  end

  def change_wagons(action)
    if action == '+'
      self.number_of_wagons += 1 if current_speed == 0
    elsif action == '-'
      self.number_of_wagons -= 1 if number_of_wagons != 0 && current_speed == 0
    end
  end

  def set_route(route)
    self.route = route
    self.current_station = route.station_from
    self.current_position = 0
    current_station.take_train(self)
  end

  def move_train(direction)
    if direction == 'forward'
      if current_position != route.get_all_stations.size - 1
        current_station.send_train(self)
        self.current_position += 1
        self.current_station = route.get_all_stations[current_position]
        current_station.take_train(self)
      else
        puts 'Поезд уже на конечной станции'
      end
    elsif direction == 'back'
      if current_position != 0
        current_station.send_train(self)
        self.current_position -= 1
        self.current_station = route.get_all_stations[current_position]
        current_station.take_train(self)
      else
        puts 'Поезд только на отправной станции'
      end
    end
  end

  def next_station
    if current_position != route.get_all_stations.size - 1
    route.get_all_stations[current_position + 1].name
    else
      puts 'Поезд уже на конечной станции'
    end
  end

  def prev_station
    if current_position != 0
    route.get_all_stations[current_position + 1].name
    else
      puts 'Поезд только на отправной станции'
    end
  end

end