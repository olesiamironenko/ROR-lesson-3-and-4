# Write a program `hangman.rb` that contains a method called `hangman`.  The method's parameters are a word and an array of letters.  It returns a string showing the letters that have been guessed.  Call the method several times from within your program, testing with different words and strings, and printing out what is returned, so that you know that your hangman method works.
# Example: `hangman("bob", ["b"])` should return `"b_b"`
# Example: `hangman("alphabet", ["a", "h"])` should return `"a__ha___"`

def hangman(word, guess_letters)
    word_letters = word.chars

    matching_letters = word_letters.map do |word_letter|
        if guess_letters.include?(word_letter)
            word_letter  # If there's a match, return the letter itself
        else
            '_' # If no match, return '_'
        end
    end
    matching_letters.join
end

puts "Type a word"
word = gets.chomp.upcase

# puts word

puts "Type one or several letters, separated with space"
guess = gets.chomp.upcase
guess_letters = guess.split

# puts guess_letters

result = hangman(word, guess_letters)
puts result

# 1. enter a word
# 2. enter some letters from that word
# 3. compare each letter of the word with guessed letters: 
# 3.0. break the word innto an aaray of letters
# 3.1. if match return the letter, 
# 3.2. if not return underscore
# 3.3. join the results in a string.
