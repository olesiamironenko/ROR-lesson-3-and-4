require 'faker'

loop do
puts "Do you want to know a fact about Chuck Norris? (Y/N)"
answer = gets.chomp.upcase

    if answer == "Y"
        puts Faker::ChuckNorris.fact

    elsif answer == "N"
        puts "Sorry to see you going"
        break

    else
        puts "Invalid answer. Type Y or N"
    end
end