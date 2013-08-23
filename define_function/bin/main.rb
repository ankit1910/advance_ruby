puts "Enter Method name you want to make"
method_name = gets.chomp
puts "Enter One line  code you want to evaluate"
code = gets.chomp
puts "output :-"
begin
  Object.send(:define_method, method_name.to_s) do
    puts eval(code)
  end
  eval "#{ method_name }"
rescue StandardError => e
  p e.message
rescue ScriptError => e
  p e.message  
end