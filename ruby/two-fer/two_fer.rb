class TwoFer
  LANGUAGE = {
    English: 'One for %<name>s, one for me.',
    Español: 'Uno para %<name>s, uno para mi.',
    Esparanto: 'Unu por %<name>s, unu por mi.'
  }

  def self.two_fer(name = 'you')
    new(name).to_s
  end

  attr_reader :name, :language

  def initialize(name, language = :English)
    @name = name
    @language = language
  end

  def to_s
    LANGUAGE[language] % { name: name }
  end
end
