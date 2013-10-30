class Code
  def initialize 
    @source_code = ""
  end
  
  def get_from_user
    loop do
      input = gets.chomp
      input.empty? ? break : append(input)
    end
  end

  def evaluate
    eval(@source_code)
  end

  private

  def append(input)
    abort "program quited by user" if input =~ /^q$/i
    @source_code << input + ';'
  end
end
