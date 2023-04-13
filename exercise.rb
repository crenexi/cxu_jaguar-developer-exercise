class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def is_capitalized(str) str.capitalize() == str end

  def self.marklar(str)
    regexMin5Char = /\b\w{5,}\b/
    return str.gsub(regexMin5Char) {
      |match| is_capitalized(match) ? "Marklar" : "marklar"
    }
  end

  # Return the sum of all even numbers in the Fibonacci sequence up to nth

  def sum_evens(arr)
    sum_of_evens = 0
    arr.each do |n|
      if n.even?
        sum_of_evens += n
      end
    end

    # Return the sum of even numbers in the sequence
    return sum_of_evens
  end

  def self.even_fibonacci(nth)
    # Fibonacci with first two, then add up to nth term
    fib = [1, 1]
    while fib.length < nth
      fib << fib[-1] + fib[-2]
    end

    # Calculate the sum of even numbers
    return sum_evens(fib)
  end
end
