require_relative '../lib/sub_string.rb'
require_relative '../lib/argument.rb'

puts "Enter the String to perform some operation on it"
input = gets.chomp
object = SubString.new(input)

methods_defined = SubString.instance_methods(false)
puts "User defined methods are"
methods_defined.each do |method|
  puts method
end

puts "Enter the method (User defined aur String) name to perform on the String"
method_name = gets.chomp
params = object.method(method_name.to_sym).parameters
method_args = Argument.new.get(params)
  
puts "output : "
puts object.send(method_name.to_sym, *method_args)
