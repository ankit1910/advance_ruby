require_relative '../lib/dynamic_class.rb'

puts "Enter the file name you want to open(people.csv/places.csv)"
input = gets.chomp

class_obj = DynamicClass.new(input)
class_obj.create_class
class_obj.create_objects

columns = class_obj.instance_variables_array
objects = class_obj.object_list
objects[0].display_all

puts "...........objects created............"
print "enter the column name you want to display from : "
columns.each { |x| print x + ' / ' }
print "\n"

method = gets.chomp
objects.each { |object| object.send "display_#{ method }" }
