class Isogram
  def self.isogram?(input)
    downcased_chars = input.downcase.chars
    downcased_chars.uniq.select { |c| c =~ /[a-z]/ }.size == downcased_chars.select { |c| c =~ /[a-z]/ }.size
  end
end
