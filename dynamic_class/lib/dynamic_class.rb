class DynamicClass
  def get_objects(name, file_path)
    DynamicClass.const_set(name, Class.new)
    first_row = true
    objects = []
    instance_variables = []
    CSV.foreach(file_path) do |row|
      if first_row
        instance_variables = row
        first_row = false
        DynamicClass.const_get(name).class_eval do
          instance_variables.each do |method_name|
            define_method "display_#{ method_name }" do
              puts "#{ method_name } : #{ instance_variable_get('@' + method_name) }"
            end
          end
        end
      else
        values_instance_variable = row
        size = row.size
        objects << DynamicClass.const_get(name).new
        for i in 0...size
          objects.last.instance_variable_set(('@' + instance_variables[i]).to_sym, row[i])
        end
      end
    end
    [objects, instance_variables]
  end
end