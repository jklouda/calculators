# input

puts "What is the total cost of your purchase?"
cost = gets.to_f

# operation

sales_tax = cost * 0.0635
total_cost = cost + sales_tax

# output

puts "Your sales tax is $" + sales_tax.round(2).to_s
puts "Your total cost is $#{total_cost.round(2
)}" 
