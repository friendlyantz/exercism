require_relative 'band'

class ResistorColorDuo
  DISPLAY = '%<tens>s%<ones>s'

  def self.value(colors)
    new(colors).to_i
  end

  private

  attr_reader(
    :first_color,
    :second_color,
    :value
  )

  def initialize(color_pair)
    @first_color, @second_color = color_pair
    @value = to_s
  end

  def to_s
    DISPLAY % { tens: BAND[first_color], ones: BAND[second_color] }
  end

  public

  def to_i
    value.to_i
  end
end
