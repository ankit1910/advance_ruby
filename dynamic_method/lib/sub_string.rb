class SubString < String
  def exclude? match
    !include? match
  end
  def palindrome?
    self == reverse
  end
  def count_vowel
    scan(/[aeiou]/i).size
  end
end