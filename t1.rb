puts "Please enter your age."
age = gets.chomp.to_i
age.times do
  print "Hooray!"
end
puts
puts "Do you feel old?"
ans = gets.chomp.downcase.strip
if ans == "yes"
  puts "You are wise."
elsif ans == "no"
  puts "You have much to learn."
else
  puts "Only time will tell."
end