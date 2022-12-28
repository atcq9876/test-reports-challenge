class Report
  def initialize(report_string)
    @report_string = report_string
    @green = 0
    @amber = 0
    @red = 0
    @uncounted = 0
  end
  
  def create_report
    raise "No results given" if @report_string == ""
    raise "Input must be a string value" if (!@report_string.is_a? String)
    
    count_grades
    return format_string
  end

  private

  def count_grades
    grades_array = @report_string.split(",")
    grades_array.each do |grade|
      grade = grade.gsub(/[^a-zA-Z]/, "")
      if grade.downcase.capitalize == "Green"
        @green += 1
      elsif grade.downcase.capitalize == "Amber"
        @amber += 1
      elsif grade.downcase.capitalize == "Red"
        @red += 1
      else
        @uncounted += 1
      end
    end
  end

  def format_string
    formatted_string = ""
    formatted_string += "Green: #{@green}" if @green > 0
    formatted_string += "\n" if @amber > 0 && @green > 0
    formatted_string += "Amber: #{@amber}" if @amber > 0
    formatted_string += "\n" if @red > 0 && (@green > 0 || @amber > 0)
    formatted_string += "Red: #{@red}" if @red > 0
    formatted_string += "\n" if @uncounted > 0 && (@green > 0 || @amber > 0 || @red > 0)
    formatted_string += "Uncounted: #{@uncounted}" if @uncounted > 0

    return formatted_string
  end
end