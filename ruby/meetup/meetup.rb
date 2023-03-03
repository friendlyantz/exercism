require 'date'
require 'pry'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  POSITIONS = [
   "first", "second", "third", "fourth", "last", "teenth" 
  ]
  def day(weekday, weekday_pos)
    case weekday_pos
    when :teenth
      binding.pry
    end
    day = 1
    Date.parse("#{day}-#{@month}-#{@year}")
    # Date.parse('formatted string DD-MM-YYYY')
  end

end
