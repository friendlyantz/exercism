class Robot
  attr_reader :name

  USED_NAMES = []

  def initialize
   @name = generate_name(USED_NAMES.last)
  end

  def self.forget; end

  def reset
    @name = generate_name(USED_NAMES.last)
  end

  private

  def generate_name(starting_string)
    # Separate the letters and digits
    # binding.pry
    starting_string = starting_string || 'AA000'
    letters = starting_string[0..1]
    digits = starting_string[2..-1].to_i

    # Increment the digits
    digits += 1

    # Check if we need to increment the letters
    if digits == 1000
      digits = 0
      letters = letters.next.next
    end

    # Combine the letters and digits
    
    name =  "#{letters}#{format('%03d', digits)}"
    
    # binding.pry
    
    while USED_NAMES.include?(name)
      name = generate_name(name)
    end
    USED_NAMES << name
    name
  end
end
