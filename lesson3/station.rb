class Station

  attr_accessor :name, :cargo_trains_on_station, :passenger_trains_on_station

  def initialize(name)
    @name = name
    @cargo_trains_on_station = []
    @passenger_trains_on_station = []
  end

  def take_train(train)
    if train.type == 'cargo'
      @cargo_trains_on_station << train
    elsif train.type == 'passanger'
      @passenger_trains_on_station << train
    end
  end

  def send_train(train)
    if train.type == 'cargo'
      @cargo_trains_on_station.delete(train)
    elsif train.type == 'passanger'
      @passenger_trains_on_station.delete(train)
    end
  end

  def show_trains(type_of_query)
    n = 1
    case type_of_query
    when 'all'
      trains = @cargo_trains_on_station | @passenger_trains_on_station
      query_name = "всех "
    when 'cargo'
      trains = @cargo_trains_on_station
      query_name = "грузовых "
    when 'passanger'
      trains = @passenger_trains_on_station
      query_name = "пассажирских "
    end
    if trains.any?
      puts "Список #{query_name}поездов:"
      trains.each do |train|
        puts "#{n}. Поезд номер: #{train.number} (тип: #{train.type}). Отправление: #{train.route.station_from.name}, назначение: #{train.route.station_to.name}, остановок: #{train.route.intermediate_stations.size}."
        n += 1
      end
      counter_helper = trains.size.to_s[-1].to_i
      if counter_helper == 1
        ending = ""
      elsif (2..4).to_a.include?(counter_helper)
        ending = "а"
      elsif counter_helper == 0 || (5..9).to_a.include?(counter_helper)
        ending = "ов"
      end
      puts "Всего #{trains.size} поезд#{ending}."
    else
      puts "На станции сейчас нет #{query_name}поездов!"
    end
  end
end