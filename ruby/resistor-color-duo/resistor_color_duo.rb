require './band_ref'

class ResistorColorDuo
  def self.value(colors)
    new(colors).to_i
  end

  def initialize(colour_pair)
    colour_pair
      .then do |first_colour, second_colour|
        @first_value = BAND_REF[first_colour].to_s
        @second_value = BAND_REF[second_colour].to_s
      end
  end

  def to_i
    (@first_value + @second_value).to_i
  end
end
