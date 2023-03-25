class Acronym
  def self.abbreviate(input)
    input
      .split(/[\s-]+/)
      .map(&:chr)
      .join
      .upcase
  end
end
