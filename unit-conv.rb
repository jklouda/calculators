# input

puts "This calculator will convert between kilometers and miles."

convert = "yes"

while convert == "yes"

puts "Are you starting with km or miles?"
initial_unit = gets.to_s.chomp

# operation and output

if initial_unit == "km"
  puts "Input your number of kilometers."
  km = gets.to_f
  miles = (km/1.61).to_f.round(1)
  puts "Your input of #{km} kilometers is equivalent to #{miles} miles."
else
  puts "Input your number of miles."
  miles = gets.to_f
  km = (miles*1.61).to_f.round(1)
  puts "Your input of #{miles} miles is equivalent to #{km} kilometers."
end

puts "Would you like to make another conversion?"
convert = gets.to_s.chomp

end




