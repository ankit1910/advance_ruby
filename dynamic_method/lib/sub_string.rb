class SubString < String
  private
  def exclude? match
    puts (!include? match)
  end
  def palindrome?
    puts (self == reverse)
  end
  def count_vowel
    puts (scan(/[aeiou]/i).size)
  end
  def r_just num, k
    rjust(Integer(num), k)
  end
end