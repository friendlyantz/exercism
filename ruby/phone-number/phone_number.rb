class PhoneNumber
  def self.clean(number)
    n = number.gsub(/[^0-9]/, '')

    return if n.size <= 9 || n.size > 11
    return if (%w[0 1] & [n[-10], n[-7]]).any?

    if n.size == 11
      return if n[-10] == '0'

      return unless n[0] == '1'

      n = n[1..-1]
    end
    n
  end
end
