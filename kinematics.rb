# input

puts "\nThis calculator will solve for an unknown kinematic variable. When inputting variables, type the numerical value if it is known; type find for the variable you want to determine; and type unknown for any variable you do not known.\n\n"

solve = "yes"

while solve == "yes"

puts "What is your inital velocity?"
v0 = gets.to_s.chomp
puts "What is your final velocity?"
vf = gets.to_s.chomp
puts "What is your acceleration?"
a = gets.to_s.chomp
puts "What is your displacement?"
delta_x = gets.to_s.chomp
puts "What is your time?"
t = gets.to_s.chomp

# operation and output

if vf == "find"
  if delta_x == "unknown"
    vf = v0.to_f + a.to_f*t.to_f
    puts "Your final velocity is #{vf.round(2)} m/s."
  elsif t == "unknown"
    vf = (v0.to_f**2 + 2*a.to_f*delta_x.to_f)**0.5
    puts "Your final velocity is #{vf.round(2)} or -#{vf.round(2)} m/s."
  elsif a == "unknown"
    vf = 2*delta_x.to_f/t.to_f - v0.to_f
    puts "Your final velocity is #{vf.round(2)} m/s."
  end
end

if delta_x == "find"
  if vf == "unknown"
    delta_x = v0.to_f*t.to_f + 0.5*a.to_f*t.to_f**2
    puts "Your displacement is #{delta_x.round(2)} m."
  elsif a == "unknown"
    delta_x = (v0.to_f + vf.to_f)/2.to_f*t
    puts "Your displacement is #{delta_x.round(2)} m."
  elsif t == "unknown"
    delta_x = ((vf.to_f**2 - v0.to_f**2)/(2*a)).to_f  
    puts "Your displacement is #{delta_x.round(2)} m."
  end
end

if a == "find"
  if delta_x == "unknown"
    a = (vf.to_f - v0.to_f)/t
    puts "Your acceleration is #{a.round(2)} m/s^2."
  elsif t == "unknown"
    a = (vf.to_f**2 - v0.to_f**2)/(2*delta_x.to_f)
    puts "Your acceleration is #{a.round(2)} m/s^2."
  elsif vf == "unknown"
    a = 2*(delta_x.to_f -v0.to_f * t.to_f)/(t**2)
    puts "Your acceleration is #{a.round(2)} m/s^2."
  end
end

if t == "find"
  if delta_x == "unknown"
    t = (vf.to_f - v0.to_f)/a
    puts "Your time is #{t.round(2)} s."
  elsif vf == "unknown"
    t1 = (-1*v0.to_f + ((v0.to_f)**2 - 2*a.to_f*-1*delta_x.to_f)**0.5)/(a.to_f)
    t2 = (-1*v0.to_f - ((v0.to_f)**2 - 2*a.to_f*-1*delta_x.to_f)**0.5)/(a.to_f)
    puts "Your first possible time is #{t1.round(2)} s."
    puts "Your second possible time is #{t2.round(2)} s."
  elsif a == "unknown"
    t = (delta_x.to_f * 2)/(vf.to_f - v0.to_f)
    puts "Your time is #{t.round(2)} s." 
  end
end

if v0 == "find"
  if delta_x == "unknown"
    v0 = vf.to_f - a.to_f*t.to_f
    puts "Your initial velocity is #{v0.round(2)} m/s."
  elsif t == "unknown"
    v0 = (vf.to_f**2 - 2*a.to_f*delta_x.to_f)**0.5
    puts "Your initial velocity is #{v0.round(2)} or -#{v0.round(2)} m/s."
  elsif vf == "unknown"
    v0 = (delta_x.to_f - 0.5*a.to_f*t.to_f**2)/v0.to_f
    puts "Your initial velocity is #{v0.round(2)} m/s."
  elsif a == "unknown"
    v0 = delta_x.to_f*2/t.to_f - vf.to_f
    puts "Your inital velocity is #{v0.round(2)} m/s."
  end
end
  
puts "\nDo you want to solve for another variable?"
solve = gets.to_s.chomp

end


