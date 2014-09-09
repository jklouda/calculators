# input

puts "Input term a"

a = gets.to_f

puts "Input term b"

b = gets.to_f

puts "Input term c"

c = gets.to_f

# operation

determinent = b**2 - 4*a*c

if determinent >= 0
  answer1 = ((-1*b + (b**2 - 4*a*c)**0.5)/(2*a)).round(5)
  answer2 = ((-1*b - (b**2 - 4*a*c)**0.5)/(2*a)).round(5)

  # output

  puts "Your first real solution is #{answer1}"
  puts "Your second real solution is " + answer2.to_s
  
else
  puts "There are no real solutions."
  answer1 = ((-1*b + (b**2 - 4*a*c)**0.5)/(2*a))
  answer2 = ((-1*b - (b**2 - 4*a*c)**0.5)/(2*a))  

  # output
  puts "Your first imaginary solution is #{answer1}"
  puts "Your second imaginary solution is " + answer2.to_s

end

