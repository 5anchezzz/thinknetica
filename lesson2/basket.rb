basket = {}

loop do
  info = {}
  puts 'Введите название товара: '
  name = gets.chomp.downcase
  break if name == 'стоп'
  puts 'Введите цену за единицу: '
  price = gets.chomp.to_f
  info[:price] = price
  puts 'Введите количество: '
  count = gets.chomp.to_i
  info[:count] = count
  info[:total] = price * count
  basket[name] = info
end

sum = 0

basket.each do |name, info|
  sum += info[:total]
end

puts "Общая стоимость: #{sum.round(2)}"