puts "\nThis calculator will determine the factorial of a number.  For which number would you like to determine the factorial?"
n = gets.to_f

factorial = 1

if n == 0
  puts "0! = 1"
elsif n == 1
  puts "1! = 1" 
elsif n > 1 
  count = 1
  while count < n
    product = factorial * (count + 1)
    factorial = product
    count = count + 1 
  end
end

puts "#{n.to_i}! = #{factorial.to_i}"
