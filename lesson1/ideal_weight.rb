puts 'Привет! Как тебя зовут?'
name = gets.chomp.to_i
puts "#{name.downcase.capitalize}, назови свой рост и я рассчитаю оптимальный вес для тебя, если он существует конечно!"
height = gets.chomp.to_i
ideal_weight = (height - 110)*1.15
if ideal_weight >= 0
  puts "#{name.downcase.capitalize}, для твоего роста идеальный вес - #{ideal_weight} кг."
else
  puts "#{name.downcase.capitalize}, твой вес уже оптимальный!"
end