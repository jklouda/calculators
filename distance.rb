# input

puts "Enter the x value of your first point."
x1 = gets.to_f

puts "Enter the y value of your first point."
y1 = gets.to_f

puts "Enter the x value of your second point."
x2 = gets.to_f

puts "Enter the y value of your second point."
y2 = gets.to_f

# operation

distance = (((x2 - x1)**2+(y2 - y1)**2)**0.5).round(2)

# output

puts "The calulated distance is " + distance.to_s
