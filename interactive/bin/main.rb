require_relative '../lib/code.rb'
code = Code.new
begin
  puts "\nPlease enter the code you want to evaluate"
  loop do
    input = gets.chomp
    input.empty? ? break : code.append(input)
  end
  puts "your output is :"
  puts code.evaluate
rescue StandardError, SyntaxError 
  puts "there is something wrong in your program"
  retry
end