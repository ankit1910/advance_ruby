require 'csv'
class CSVParser
  attr_accessor :file_name, :header, :rows

  def initialize(file_name)
    @file_name = file_name
    @file_data = get_file_data
    @header = get_header
    @rows = get_rows
  end

  private

  def get_file_data
    file_path = get_file_path
    CSV.read(file_path) 
  end

  def get_header
    @file_data.shift
  end
  
  def get_rows
    @file_data
  end

  def get_file_path
    "#{ File.dirname(__FILE__) }/../bin/#{ file_name }"
  end
end