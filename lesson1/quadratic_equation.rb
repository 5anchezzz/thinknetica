a = ""

while a == 0 || a == "" do
  puts "Введите коэффициент квадратного уравнения a"
  a = gets.chomp.to_i
end

puts "Введите коэффициент квадратного уравнения b"
b = gets.chomp.to_i

puts "Введите коэффициент квадратного уравнения c"
c = gets.chomp.to_i

d = b**2 - 4 * a * c

if d>0
  puts "D = #{d}"
  puts "x1 = #{ (-b + Math.sqrt(d)) / (2 * a) }"
  puts "x2 = #{ (-b - Math.sqrt(d)) / (2 * a) }"
elsif d == 0
  puts "D = 0"
  puts "x1,2 = #{ -b / (2 * a) }"
else
  puts "Корней нет"
end
