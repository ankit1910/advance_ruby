class BinaryOperation
  def calculate(first_operand, operator, second_operand)
    [first_operand, second_operand].reduce(operator)
  end
end