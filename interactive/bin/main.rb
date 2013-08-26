require_relative '../lib/code.rb'
begin
  puts "\nPlease enter the code you want to evaluate"
  code = ""
  while true
    input = gets.chomp
    break if input =~ /q/i or input.empty?
    code << input + ';'
  end
  obj = Code.new
  puts "your output is :"
  puts obj.evaluate_code(code)
rescue StandardError, SyntaxError
  puts "You got something incorrect in you code"
  retry
end