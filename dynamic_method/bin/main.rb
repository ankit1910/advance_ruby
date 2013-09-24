require_relative '../lib/sub_string.rb'
puts "Enter the String to perform some operation on it"
input = gets.chomp
object = SubString.new(input)

puts "Enter the method name to perform on the String"
method_name = gets.chomp
method_args = []

arity = object.method(method_name.to_sym).arity
arity.times do |index|
  puts "Enter #{ index + 1 } argument for method : #{ method_name }"
  method_args << gets.chomp
end

puts "output : "
puts object.send(method_name.to_sym, *method_args)