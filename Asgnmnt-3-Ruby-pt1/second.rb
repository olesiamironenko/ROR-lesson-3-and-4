puts "Enter your first name" # Puts a prompt to the console for a user to type ones first name
first_name = gets.chomp       # Collect the answer
puts "#{first_name}" # pust the answer on the screen

puts "Enter your last name" 
last_name = gets.chomp       
puts "#{last_name}" 

puts "Enter your age" 
age = gets.chomp       
puts "#{age}" 

puts "Enter your street address" 
street_address = gets.chomp       
puts "#{street_address}" 

puts "Enter your city" 
city = gets.chomp       
puts "#{city}" 

puts "Enter your state" 
state = gets.chomp       
puts "#{state}" 

person = {
    first_name: first_name,
    last_name: last_name,
    age: age,
    street_address: street_address,
    city: city,
    state: state
}

puts " "

puts person.keys

puts " "

puts person.values

puts " "

=begin
puts first_name.upcase
puts last_name.upcase
puts city.upcase
=end

person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

puts person.values

puts " "

person[:state] = person[:state].upcase

puts person.values

puts " "
