require_relative '../lib/code.rb'
code = Code.new
begin
  puts "\nPlease enter the code you want to evaluate"
  code.get_from_user
  puts "your output is :"
  puts code.evaluate
rescue StandardError, SyntaxError 
  puts "Something went wrong in your program"
  retry
end