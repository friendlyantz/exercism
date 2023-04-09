# frozen_string_literal: true

class TwoFer
  ENGLISH = 'One for %<name>s, one for me.'
  ESPAÑOL = 'Uno para %<name>s, uno para mi.'
  ESPARANTO = 'Unu por %<name>s, unu por mi.'

  LANGUAGE = {
    English: ENGLISH,
    Español: ESPAÑOL,
    Esparanto: ESPARANTO
  }

  def self.two_fer(name = 'you', language = :English)
    new(name, language).to_s
  end

  private

  attr_reader :name, :language

  def initialize(name, language)
    @name = name
    @language = language
  end

  public

  def to_s
    LANGUAGE[language] % { name: name }
  end
end
