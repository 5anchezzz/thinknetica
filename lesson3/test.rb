require_relative 'station'
require_relative 'train'
require_relative 'route'

los_angeles = Station.new('Los Angeles')
albuquerque = Station.new('Albuquerque')
kansas = Station.new('Kansas City')
chicago = Station.new('Chicago')
buffalo = Station.new('Buffalo')
new_york = Station.new('New York')

route_to_ny = Route.new(los_angeles, new_york, [chicago])
route_to_la = Route.new(los_angeles, new_york,[chicago])
route_long_way = Route.new(los_angeles, new_york, [albuquerque, kansas, chicago, buffalo])

tr_01 = Train.new('CAR001', 'cargo', 11)
tr_02 = Train.new('CAR002', 'cargo', 15)
tr_03 = Train.new('PASS001', 'passanger', 7)


puts '------------------------------------'
puts 'Создали поезд!'
puts 'Текущая станция поезда без маршрута:'
puts tr_03.current_station.name
puts '------------------------------------'
puts 'Назначили маршрут:'
route_long_way.show_all_stations
puts 'Текущая станция:'
tr_03.set_route(route_long_way)
puts tr_03.current_station.name
puts 'сейчас на текущей станции:'
tr_03.current_station.show_trains('all')
puts 'Следующая станция по маршруту:'
puts tr_03.next_station
puts 'сейчас на следующей станции:'
albuquerque.show_trains('all')
puts '------------------------------------'
puts 'Попробовали переместить поезд назад:'
tr_03.move_train('back')
puts '------------------------------------'
puts 'Перемещаем поезд вперед:'
tr_03.move_train('forward')
puts 'Текущая станция:'
puts tr_03.current_station.name
puts 'сейчас на текущей станции:'
tr_03.current_station.show_trains('all')
puts 'Текущая станция:'
puts tr_03.prev_station
puts 'сейчас на предыдущей станции:'
los_angeles.show_trains('all')
puts 'Следующая станция по маршруту:'
puts tr_03.next_station
puts 'сейчас на следующей станции:'
kansas.show_trains('all')
puts '------------------------------------'