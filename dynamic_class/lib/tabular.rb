class Tabular

  attr_accessor :header, :rows, :footer
  
  def initialize(header, rows = nil, footer)
    @header = header
    @rows = rows
    @footer = footer
  end

  def display_table
    columns = header.count
    display_header(header, columns)
    display_content(rows, columns) if rows
    display_footer(footer, columns)
  end

  private
  
  def display_header(header, columns)
    make_line(columns)
    header.each do |column|
      make_column(column)
    end
    make_line(columns)
  end

  def display_content(rows, columns)
    rows.each do |row|
      row.each do |value|
        make_column(value)
      end       
      printf("\n")
    end
    make_line(columns)      
  end

  def display_footer(footer, columns)
    make_line(columns)
  end

  def make_column(value)
    printf("|%18s|", value)
  end

  def make_line(columns)
    puts ""
    puts '-' * (20 * columns)
  end
end