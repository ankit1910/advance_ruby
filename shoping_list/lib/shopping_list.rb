class ShoppingList
  attr_reader :list
  def initialize
    @list = Hash.new { |hash, key| hash[key] = 0 }
  end
  def add(product, quantity)
    list[product] += quantity
  end
  def items(&block)
    instance_eval(&block)
  end
end