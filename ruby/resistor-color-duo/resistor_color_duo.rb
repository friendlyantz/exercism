require_relative 'band'

class ResistorColorDuo
  def self.value(colors)
    new(colors).to_i
  end

  private

  attr_reader :value

  DISPLAY = '%<tens>s%<ones>s'

  def initialize(color_pair)
    @first_color, @second_color = color_pair
    @value = self.to_s
  end

  public

  attr_reader :first_color, :second_color

  def to_s
    DISPLAY % { tens: BAND[first_color], ones: BAND[second_color] }
  end

  def to_i
    value.to_i
  end
end
