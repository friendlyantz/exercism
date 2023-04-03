require 'date'
require 'pry'
class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  WEEKDAY_NUMS = {
    monday: 1,
    tuesday: 2,
    wednesday: 3,
    thursday: 4,
    friday: 5,
    saturday: 6,
    sunday: 7
  }

  DESCRIPTO_DAY_NUMS = {
    first: 1,
    second: 8,
    third: 15,
    fourth: 22,
    last: -1,
    teenth: 13
  }

  def day(weekday, weekday_descriptor)
    date = Date.new(@year, @month, DESCRIPTO_DAY_NUMS[weekday_descriptor])
    day = WEEKDAY_NUMS[weekday]
    until date.cwday == day
      date = case weekday_descriptor
             when :last
               date.prev_day
             else
               date.next_day
             end
    end

    date
  end
end
