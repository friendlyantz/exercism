# RAW_INPUT = File.read(File.join(__dir__, 'input'))

# File.open('./preped_input.rb', 'w') do |file|
#   file.write(
#     'BAND_INDEX = ' + RAW_INPUT
#         .split("\n")
#         .map { |line| line.split(': ') }.to_h
#         .transform_keys { |k| k.to_s.downcase }
#         .inspect
#   )
# end

# require './preped_input'
BAND_INDEX = {
  'black' => '0',
  'brown' => '1',
  'red' => '2',
  'orange' => '3',
  'yellow' => '4',
  'green' => '5',
  'blue' => '6',
  'violet' => '7',
  'grey' => '8',
  'white' => '9'
}

class ResistorColorDuo
  def self.value(colour_pair)
    first_colour, second_colour = colour_pair.first(2)
    (BAND_INDEX[first_colour] + BAND_INDEX[second_colour]).to_i
  end
end
