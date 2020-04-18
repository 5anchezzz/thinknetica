fibonacci = [0, 1]

while fibonacci[-1] + fibonacci[-2] <= 100 do
  i = fibonacci[-1] + fibonacci[-2]
  fibonacci << i
end