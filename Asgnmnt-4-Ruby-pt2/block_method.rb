def do_calc
    # Yield to the block, passing the arguments a and b
    result = yield(7, 9)
    puts result
end

  do_calc do |x, y|
    x + y  # Block that adds the two numbers
  end

  do_calc do |x, y|
    x * y  # Block that multiplies the two numbers
  end