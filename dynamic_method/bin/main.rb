require_relative '../lib/sub_string.rb'
puts "Enter the String to perform some operation on it"
input = gets.chomp
object = SubString.new(input)
puts "Enter the method name (with argument if any) to perform on the String"
method_with_args = gets.chomp
method_with_args = method_with_args.split(/(\s|\(|\,|\))/)
method_name = method_with_args.shift
method_args = method_with_args.select { |ele| ele =~ /(^\w+)/ }
puts "output : "
puts object.send(method_name.to_sym, *method_args)
