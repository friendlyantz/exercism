class Raindrops
  WORD_INDEX = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  class << self
    def convert(number)
      new(number).convert
    end
  end

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def convert
    result.empty? ? number.to_s : result
  end

  def result
    WORD_INDEX
      .filter { |factor, _sound| (number % factor).zero? }
      .values
      .join
  end
end
