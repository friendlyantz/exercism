class Crypto
  def initialize(input)
    @input = input
  end

  def ciphertext
    data = @input
           .then { |input| input.gsub(/[^a-zA-Z0-9]/, '').downcase }

    rows_count, columns_count = define_size_of_square(data)

    return data if [rows_count, columns_count].include? 0

    normalized_data = normalize_data(data, columns_count)

    result = []
    columns_count
      .times { result << normalized_data.map { _1.slice!(0) }.join }
    result.join(' ')
  end

  def define_size_of_square(data)
    min_area = data.length
    c = 1
    r = 1

    loop do
      break if (r * c >= min_area) && (c >= r) && (c - r <= 1)

      c += 1
      break if (r * c >= min_area) && (c >= r) && (c - r <= 1)

      r += 1
    end
    [r, c]
  end

  def normalize_data(data, max_line_length)
    data
      .scan(/[a-z0-9]{1,#{max_line_length}}/)
      .map { |line| line.ljust(max_line_length, ' ') }
  end
end
