RAW_INPUT = File.read(File.join(__dir__, 'input'))

File.open('./preped_input.rb', 'w') do |file|
  file.write(
    'BAND_INDEX = '.concat(
      RAW_INPUT
      .lines
      .map { |line| line.split(': ') }.to_h
      .map { |k, v| [k.downcase, v.to_i] }.to_h
      .inspect
    )
  )
end

require './preped_input'

class ResistorColorDuo
  def self.value(colors)
    new(colors).to_i
  end

  def initialize(colour_pair)
    @first_colour, @second_colour = colour_pair.first(2)
  end

  def to_i
    "#{BAND_INDEX[@first_colour]}#{BAND_INDEX[@second_colour]}".to_i
  end
end
