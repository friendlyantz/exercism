require_relative './band'

class ResistorColorDuo
  FORMAT = "%<tens>s%<ones>s".freeze

  def self.value(colors)
    new(colors).to_i
  end

  attr_reader :value

  def initialize(color_pair)
    @value =
      color_pair
      .then do |first_color, second_color|
        FORMAT % { tens: BAND[first_color], ones: BAND[second_color] }
      end
  end

  def to_i
    value.to_i
  end
end
