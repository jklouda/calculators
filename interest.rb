# input

puts "What is the cost of your total bill?"
cost = gets.to_f

puts "What percent tip would you like to leave"
percent = gets.to_f

# operation

percent = percent/100
tip = (cost*percent).round(2)
total_cost = (cost + tip).round(2)

# output

puts "Your total tip is $" + tip.to_s
puts "You need to leave a total of $#{total_cost}" 


