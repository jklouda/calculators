# input

puts "What is the unit of measurement you will be using?"

units = gets.to_s

puts "What is the length of the cube?"

length = gets.to_f

puts "What is the width of the cube?"

width = gets.to_f

puts "What is the height of the cube?"

height = gets.to_f

# operation

volume = (length*width*height).round(2)

#output

puts "The volume of your cube is " + volume.to_s + " cubic " + units
puts "The volume of your cube is #{volume} cubic #{units}"





