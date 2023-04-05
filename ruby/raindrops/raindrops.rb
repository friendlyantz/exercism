module Raindrops
  module_function

  WORD_INDEX = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def convert(number)
    result = ''
    WORD_INDEX.each do |factor, sound|
      result << sound if (number % factor).zero?
    end
    result.empty? ? number.to_s : result
  end
end
