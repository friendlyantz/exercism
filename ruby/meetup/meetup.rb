require 'date'
require 'pry'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  WEEKDAY_NUMS = {
    sunday: 0,
    monday: 1,
    tuesday: 2,
    wednesday: 3,
    thursday: 4,
    friday: 5,
    saturday: 6
  }

  POSITIONS = {
    first: 0,
    second: (7 - 1),
    third: (14 - 1),
    fourth: (21 - 1),
    last: -> { 'ladida' },
    teenth: (12 - 1)
  }

  def day(weekday, weekday_pos)
    date = Date.new(@year, @month)
    day = WEEKDAY_NUMS[weekday]
    pos = POSITIONS[weekday_pos]

    date += pos
    date = date.next_day until date.wday == day
    date
  end
end
