require_relative 'csv_parser.rb'
require_relative 'tabular.rb'

class DynamicClass
  attr_accessor :class_name, :instance_variables_array, :object_list

  def initialize(file_name)
    @data = get_file_data(file_name)
    @class_name = get_class_name
    @instance_variables_array = get_instance_varaibles
    @object_list = []
  end


  def create_class
    instances_array = instance_variables_array
    rows = @data.rows
    Object.const_set class_name, Class.new {
      attr_accessor *instances_array
      
      define_method :initialize do |values|
        instances_array.each_with_index do |instance, index|
          send "#{ instance }=", values[index]
        end
      end

      define_method :display_all do
        Tabular.new(instances_array, rows, nil).display_table
      end
      
      instances_array.each do |method_name|
        define_method "display_#{ method_name }" do
          puts "#{ method_name } : #{ self.send method_name }"
        end
      end
    }
  end
 
  def create_objects
    klass = Object.const_get(class_name)
    rows = @data.rows
    rows.each do |row|      
      obj = klass.new(row)
      object_list << obj
    end
  end

  private

  def get_file_data(file_name)
    CSVParser.new(file_name)
  end

  def get_class_name
    name = @data.file_name.split(/[\.|_]/)
    name.pop
    name.each { |part| part.capitalize! }.join    
  end

  def get_instance_varaibles
    var = @data.header
    var.collect! do |inst_var|
      inst_var.downcase.gsub(/\W|\d/, '_')
    end
    var    
  end


end
