class Code
  def initialize 
    @source_code = ""
  end
  
  def append(input)
    abort "program quited by user" if input =~ /^q$/i
    @source_code << input + ';'
  end

  def evaluate
    eval(@source_code)
  end
end
