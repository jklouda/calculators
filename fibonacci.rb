puts "\nWhich number would your like to find in the fibonacci series? For example, type 1 for 1st, 4 for fourth etc.?"
n = gets.to_i

if n == 1
  puts "The 1st number in the Fibonacci series is 0."
elsif n == 2
  puts "The 2nd number in the Fibonacci series is 1."
elsif n > 2
  count = 3
  fibnum1 = 0
  fibnum2 = 1
  while count <= n
    next_fibnum = fibnum1 + fibnum2
    fibnum1 = fibnum2
    fibnum2 = next_fibnum
    count = count + 1
  end
end

if n == 3
  puts "The third number in the Fibonacci series is #{next_fibnum}."
elsif n>3
  puts "The #{n}th number in the Fibonacci series is #{next_fibnum}."
end


   
