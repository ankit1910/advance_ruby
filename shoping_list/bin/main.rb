require_relative '../lib/shopping_list.rb'
sl = ShoppingList.new
sl.items do
  add("Toothpaste", 2)
  add("Computer", 1)
  add("Bread", 4)
end
sl.list.each do |key, value|
  puts "#{ key } : #{ value }"
end