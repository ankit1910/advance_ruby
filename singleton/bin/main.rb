require_relative '../lib/string.rb'
instance1 = instance2 = instance3 = "HELLO world"

# first method direct
def instance1.to_upcase
  upcase 
end

# defining singleton class for instance3
ghost = class << instance3 ; self ; end
ghost.class_eval do
  def reverse_string
    reverse
  end
end

# defining method for creating instance method in String class
String.create_instance_method_for(instance2)
puts instance1.to_upcase
puts instance2.to_downcase
puts instance3.reverse_string
