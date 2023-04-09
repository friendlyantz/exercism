require_relative 'band'

class ResistorColorDuo
  def self.value(colors)
    new(colors).to_i
  end

  attr_reader :value

  private

  DISPLAY = '%<tens>s%<ones>s'

  def initialize(color_pair)
    first_color, second_color = color_pair
    @value = DISPLAY % { tens: BAND[first_color], ones: BAND[second_color] }
  end

  public

  def to_i
    value.to_i
  end
end
