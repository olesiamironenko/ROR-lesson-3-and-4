puts "Welcome to the number guessing game!"

secret_number = rand(1..100)
# puts secret_number

loop do
    guess = gets.chomp.to_i

    if guess == 0 || guess < 1 || guess > 100
        puts "Invalid entry."
        puts "Enter a number between 1 and 100."
        next
    end

    if guess == secret_number 
        puts "Correct!"
        puts "Do you want to play again? (Y/N)" 
        answer = gets.chomp.upcase
        break unless answer == "Y"
        secret_number = rand(1..100)
        # puts secret_number
        puts "Let's play again."
        puts "Enter a number between 1 and 100."
    elsif guess < secret_number
        puts "Your guess it too low"
        puts "Enter a number higher then #{guess} and lower 101"
    else 
        puts "Your guess it too high"
        puts "Enter a number higher then 0 and lower #{guess}"
    end
end

