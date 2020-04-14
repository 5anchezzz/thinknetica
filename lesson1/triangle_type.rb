puts 'Введите длины сторон труегольника через запятую'
sides_from_user = gets.chomp
sides = sides_from_user.strip.split(',')

sorted_sides = sides.map(&:to_i).sort.reverse

if sorted_sides.uniq.length == 1
  puts 'Данный треугольник является равносторонним'
elsif sorted_sides.uniq.length == 2
  puts 'Данный треугольник является равнобедренным'
elsif sorted_sides[0]**2 == sorted_sides[1]**2 + sorted_sides[2]**2
  puts 'Данный треугольник является прямоугольным'
else
  puts 'Это просто треугольник'
end