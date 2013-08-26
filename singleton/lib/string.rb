class String
  class << self
    def create_instance_method_for(obj)
      obj.instance_eval do
        def to_downcase
          downcase
        end
      end 
    end
  end  
end
