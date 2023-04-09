class TwoFer
  ENGLISH = 'One for %<name>s, one for me.'
  ESPAÑOL = 'Uno para %<name>s, uno para mi.'
  ESPARANTO = 'Unu por %<name>s, unu por mi.'

  LANGUAGE = {
    English: ENGLISH,
    Español: ESPAÑOL,
    Esparanto: ESPARANTO
  }

  def self.two_fer(name = 'you')
    new(name).to_s
  end

  private

  attr_reader :name, :language

  def initialize(name, language: :English)
    @name = name
    @language = language
  end

  public

  def to_s
    LANGUAGE[language] % { name: name }
  end
end

TEST_HASH = {
  TwoFer.two_fer('José') => 'One for José, one for me.',
  TwoFer.new('Joseph').to_s => 'One for Joseph, one for me.',
  TwoFer.new('José', language: :Español).to_s => 'Uno para José, uno para mi.'
}.each do |key, value|
  unless key == value
    raise <<~ERROR
      uhhohh:
      incorrect translation!
      got:          #{key},
      but expected: #{value}
    ERROR
  end
end
