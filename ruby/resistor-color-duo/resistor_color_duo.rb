require 'pry'
class ResistorColorDuo
  COLOR_MAP = {
    Black: 0,
    Brown: 1,
    Red: 2,
    Orange: 3,
    Yellow: 4,
    Green: 5,
    Blue: 6,
    Violet: 7,
    Grey: 8,
    White: 9
  }
              # .transform_keys { |k| k.to_s.downcase }
              # .transform_values { |v| v.to_s.downcase }
              .map { |k,v| [k.to_s.downcase, v.to_s.downcase]}.to_h
              .freeze

  def self.value(input)
    input
      .first(2)
      .map { |color| COLOR_MAP[color] }
      .join
      .to_i
  end
end
