require_relative './band'

class ResistorColorDuo
  attr_reader :value

  def self.value(colors)
    new(colors).to_i
  end

  def initialize(colour_pair)
    colour_pair
      .then do |first_colour, second_colour|
        @value = BAND[first_colour].to_s + BAND[second_colour].to_s
      end
  end

  def to_i
    value.to_i
  end
end
