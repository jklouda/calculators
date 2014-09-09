choice = "yes"

while choice == "yes"

puts "This calculator will determine the smallest number of coins that are equivalent to a given dollar amount.  Input your dollar amount to convert to change (xxxx.xx)."

amount = gets.to_f
total_change = (amount * 100).to_i

quarters = total_change/25
remaining_dnp = (amount * 100 - quarters*25).to_i

dimes = remaining_dnp/10
remaining_np = remaining_dnp - dimes*10

nickels = remaining_np/5
remaining_p = remaining_np - nickels*5

totalcoins = quarters + dimes + nickels + remaining_p

puts "The minimum number of coins needed is #{totalcoins}."  
puts "This includes #{quarters} quarter(s); #{dimes} dime(s); #{nickels} nickel(s); and #{remaining_p} pennie(s)."

puts "\nDo you want to make change again?"
choice = gets.chomp

end

