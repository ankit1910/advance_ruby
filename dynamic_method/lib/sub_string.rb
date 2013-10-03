class SubString < String

  def palindrome?
    puts (self == reverse)
  end
  
  def count_vowel
    puts (scan(/[aeiou]/i).size)
  end
  
  def exclude? match
    puts (!include? match)
  end

  def r_just num, k = '*'
    rjust(Integer(num), k)
  end

  def concat *args
    args.unshift(self.to_s).join(' ')
  end
end