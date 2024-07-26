
loop do 
    puts "Think of a number from 1 to 100"
    puts "Let me guess..."
    lowest = 1
    highest = 100
    
    loop do
        guess = ((lowest) + (highest))/2
        puts "Is it #{guess}?"
        puts "Answer: correct / too low / too high"
        response = gets.chomp.downcase

        
        if response == "correct"
            puts "Great!"
            break

        elsif response == "too high"

            if guess >= highest
                puts "It's not true"
                break
            end

            highest = guess - 1

        elsif response == "too low"

            if guess <= lowest
                puts "It's not true"
                break
            end

            lowest = guess + 1

        else
            puts "invalid response"
            puts "enter valid response: correct / too low / too high"
        end

        if lowest > highest
            puts "Lying!"
            break
        end
    end
    puts "Do you want to play again? (Y/N)" 
    answer = gets.chomp.upcase
    break unless answer == "Y"
end