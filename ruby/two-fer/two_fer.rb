class TwoFer
  SENTENCE = 'One for %<name>s, one for me.'.freeze

  def self.two_fer(name = 'you')
    new(name).to_s
  end

  def initialize(name)
    @name = name
  end

  def to_s
    SENTENCE % { name: @name }
  end
end
