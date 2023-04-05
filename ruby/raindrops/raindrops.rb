class Raindrops
  WORD_INDEX = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  class << self
    def convert(number)
      result = WORD_INDEX
               .filter { |factor, _sound| (number % factor).zero? }
               .values
               .join

      result.empty? ? number.to_s : result
    end
  end
end
