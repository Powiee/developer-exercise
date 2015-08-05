class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split(' ').map { |word|
      if (word.length > 4)
        cap = /[A-Z]/.match(word)
        word = (cap ? 'M' : 'm') + 'arklar' + /\p{P}/.match(word).to_s
      else
        word
      end
    }.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    currFib = 1
    nextFib = 1
    sum = 0
    (1..nth).each {
      if(currFib % 2 == 0)
        sum += currFib;
      end
      temp = nextFib
      nextFib = currFib + nextFib
      currFib = temp
    }
    return sum
  end

end
