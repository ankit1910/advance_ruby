while true  
  begin
    puts "Please enter the code you want to evaluate"
    code = ""
    while true
      input = gets.chomp
      break if input =~ /q/i or input.empty?
      code << input
      code << ';'
    end
    puts "output is"
    puts eval(code)
  rescue Exception
    puts "You got something incorrect in you code"
  end
  puts "you want to execute more code press 'y' for yes"
  break if gets !~ /y|yes/i
end
