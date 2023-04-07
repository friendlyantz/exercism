require_relative './band'

class ResistorColorDuo
  def self.value(colors)
    new(colors).to_i
  end

  attr_reader :value

  def initialize(color_pair)
    @value =
      color_pair
      .take(2)
      .each_with_object('') { |color, string| string << BAND[color].to_s }
  end

  def to_i
    value.to_i
  end
end
