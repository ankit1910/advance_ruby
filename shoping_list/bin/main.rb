require_relative '../lib/shopping_list.rb'
list = ShoppingList.new
list.items do
  add("Toothpaste", 2)
  add("Computer", 1)
  add("Bread", 4)
end
list.display

