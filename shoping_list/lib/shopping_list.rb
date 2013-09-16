require_relative 'item.rb'
class ShoppingList
  attr_reader :list_items

  def initialize
    @list_items = []
  end

  def items(&block)
    instance_eval(&block)
  end

  def add(product, quantity)
    item = Item.new(product, quantity)
    list_items << item
  end

  def display
    list_items.each do |item|
      puts "#{ item.name } : #{ item.quantity }"
    end
  end
end