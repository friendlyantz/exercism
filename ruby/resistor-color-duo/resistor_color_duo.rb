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
              .map { |k,v| [k.to_s.downcase, v.to_s.downcase]}.to_h
              .freeze

  def self.value(colour_pair)
    (COLOR_MAP[colour_pair[0]] + COLOR_MAP[colour_pair[1]]).to_i
  end
end
