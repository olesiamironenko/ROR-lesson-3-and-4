# 3. Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  Write a method that accepts the hash as a parameter and prints out an array of keys and an array of values.  Call the method within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this method?)  Call this program `hash_to_array.rb`.

def hash_to_array(hash)
    key = hash.keys
    value = hash.values
    puts key
    puts value
end

user_hash = {} 

5.times do
    puts "Enter the key for the hash"
    key = gets.chomp
    
    puts "Enter the value for the key"
    value = gets.chomp

    user_hash[key] = value
end

hash_to_array(user_hash)

# 1. Create a new hash
# 2. Collect from a user the key for the hash and the value for the key 5 times.
# 3. Store user input in the hash.
# 4. Take only keys from the hash and print them on the screen
# 5. Take only key values from the hash and print them on the screen