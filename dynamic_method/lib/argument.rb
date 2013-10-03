class Argument
  attr_reader :arguments

  def initialize
    @arguments = []
  end
  
  def get params
    params.each do |argument|
      case argument.first
      when :req
        get_required
      when :opt
        get_optional
      when :rest
        get_splat
      end
    end
    arguments
  end

  private

  def get_required
    puts "Enter the required argument"
    arguments << gets.chomp
  end

  def get_optional
    puts "Enter the optional argument OR space to take default value"
    input = gets.chomp
    arguments << input if input.strip != ""
  end

  def get_splat
    loop do
      puts "Enter the splat argument OR spae to stop entering"
      input = gets.chomp
      break if input.strip == ''
      arguments << input
    end
  end
  
end
