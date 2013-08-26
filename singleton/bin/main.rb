require_relative '../lib/string.rb'
instance1 = "hello world"
instance2 = "HELLO WORLD"

def instance1.to_upcase
  upcase 
end

puts instance1.to_upcase
String.create_instance_method_for(instance2)
puts instance2.to_downcase
