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
