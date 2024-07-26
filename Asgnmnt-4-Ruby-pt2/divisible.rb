def divisible
    result = []

    (1..100).each do |n|
        if n % 2 == 0 || n % 3 == 0 || n % 5 == 0 
            result << n
        end
    end
    result
end

divisible
puts "Numbers between 1 and 100 that are divisible by 2 or 3 or 5:"
puts divisible.join(', ')

# Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns.  Call the program `divisible.rb`.

# 1. Define an array: 1 to 100.
# 2. Iterate through the defined array:
# 2.1 for each number: 
# 2.2 devide the number by 2, if no remainder insert it into a new array,
# 2.3 devide the number by 3, if no remainder insert it into a new array,
# 2.2 devide the number by 5, if no remainder insert it into a new array


