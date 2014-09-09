# input

puts "What is the x value of your first point?"
x1 = gets.to_f

puts "What is the y value of your first point?"
y1 = gets.to_f

puts "What is the x value of your second point?"
x2 = gets.to_f

puts "What is the y value of your second point?"
y2 = gets.to_f

puts "What are the units of your x-axis?"
x_units = gets.to_s.chomp

puts "What are the units of your y-axis?"
y_units = gets.to_s.chomp

# operation

slope = ((y2 - y1)/(x2 - x1)).round(2)

# output

puts "Your slope is #{slope} #{y_units}/#{x_units}"
puts "Your slope is " + slope.to_s + " in units of " + y_units + " per " + x_units


