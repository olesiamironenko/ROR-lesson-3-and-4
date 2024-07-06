puts "Think of a number from 1 to 100"
# puts "Assume the target number is 20"
puts "Let me guess..."

lowest = 1
highest = 100
middle = ((lowest-1) + (highest+1))/2
# puts "(#{lowest} + #{(highest+1)})/2 = #{middle}"

loop do
    puts " "
    puts "Is it #{middle}?"
    puts "Answer: correct / too low / too high"
    response = gets.chomp.downcase
    
    # puts "lowest #{lowest}"
    # puts "highest #{highest}"
    # puts "middle #{middle}"
    # puts response

    if response != "correct" || response != "too high" || response != "too low"
        puts "invalid response"
        puts "enter valid response: correct / too low / too high"
        next
    end

    if middle > lowest and middle < highest and response == "too low"
        lowest = middle
        middle = ((lowest) + (highest+1))/2

    elsif middle > lowest and middle < highest and response == "too high"
        highest = middle
        middle = ((lowest-1) + (highest))/2

    elsif middle >= lowest and middle <= highest and response == "correct"
        puts "Great!"
        puts "Do you want to play again? (Y/N)" 
        answer = gets.chomp.upcase
        break unless answer == "Y"
        puts "Think of a number from 1 to 100"
        # puts "Assume the target number is ??"
        puts "Let me guess..."
        lowest = 1
        highest = 100
        middle = ((lowest-1) + (highest))/2

    elsif middle == lowest and response == "too low"
        puts "higher number is equal to the current highest"
        # puts "is #{highest} correct?"
        # puts "Answer: correct / too low / too high"

    elsif middle == lowest and response == "too high"
        puts "number cannot be lower then the current lowest"
        puts "the answer should be correct"
        # puts "is #{lowest} correct?"
        # puts "Answer: correct / too low / too high"

    elsif middle == highest and response == "too low"
        puts "number cannot be higher then the current highest"
        puts "the answer should be correct"
        # puts "is #{highest} correct?"
        # puts "Answer: correct / too low / too high"

    elsif middle == highest and response == "too high"
        puts "lower number is equal to the current lowest"
        # puts "is #{lowest} correct?"
        # puts "Answer: correct / too low / too high"

    elsif middle < lowest
        puts "number cannot be lower then the current lowest"
        puts "are you lying?"

    elsif middle > highest
        puts "number cannot be higher then the current highest"
        puts "are you lying?"

    else 
        puts "error"
    end    
 
end
