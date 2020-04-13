puts "Привет! Как тебя зовут?"
name = gets.chomp
puts "#{name.downcase.capitalize}, назови свой рост и я рассчитаю оптимальный вес для тебя, если он существует конечно!"
height = gets.chomp
ideal_weight = (height.to_i - 110)*1.15
if ideal_weight >= 0
  puts "#{name.downcase.capitalize}, для твоего роста идеальный вес - #{ideal_weight} кг."
else
  puts "#{name.downcase.capitalize}, твой вес уже оптимальный!"
end