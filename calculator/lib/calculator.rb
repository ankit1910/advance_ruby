module Calculator
  def self.calculate(first_operand, operator, second_operand)
    p [first_operand, second_operand].reduce(operator)
  end
end