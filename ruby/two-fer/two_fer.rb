class TwoFer
  SENTENCE = 'One for %(name)s, one for me.'.freeze

  def self.two_fer(name = 'you')
    new(name).to_s
  end

  def self.new(name)
    @name = name
    self
  end

  def self.to_s
    format('One for %<name>s, one for me.', name: @name)
  end
end
