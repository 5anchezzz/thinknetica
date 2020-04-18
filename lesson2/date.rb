puts 'Введите день'
day = gets.chomp.to_i
puts 'Введите месяц'
month = gets.chomp.to_i
puts 'Введите год'
year = gets.chomp.to_i

if year % 400 == 0 || year % 4 == 0 && year % 100 != 0
  type = true # високосный
else
  type = false #не високосный
end

number_of_days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

count = number_of_days[0..month - 1].inject(:+) + day

if type && month > 2
  puts count + 1
else
  puts count
end
