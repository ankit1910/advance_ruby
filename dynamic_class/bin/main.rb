require 'csv'
require_relative '../lib/dynamic_class.rb'

puts "Enter the file name you want to open(people.csv/places.csv)"
input = gets.chomp
class_name = input.split('.')[0].capitalize
file_path = "#{ File.dirname(__FILE__) }/#{ input }"
new_class = DynamicClass.new
objects, columns = new_class.get_objects(class_name, file_path)

puts "...........objects created............"
print "enter the column name you want to display from : "
columns.each { |x| print x + ' / ' }
print "\n"

column_name = gets.chomp
objects.each { |object| object.send "display_#{ column_name }" }
