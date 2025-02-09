class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split.map do |word|
      if word.length > 4
        if word[0] == word[0].upcase
          modified_word = "Marklar"
        else
          modified_word = "marklar"
        end
        if word.match(/[[:punct:]]$/) # check if word ends with punctuation
          modified_word += word[-1] # add punctuation to modified word
        end
        modified_word
      else
        word
      end
    end.join(" ")  
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [1, 1]
    sum = 0
    while fib.length < nth
      fib << fib[-1] + fib[-2]
    end
    fib.each do |num|
      if num % 2 == 0
        sum += num
      end
    end
    sum
  end

end
