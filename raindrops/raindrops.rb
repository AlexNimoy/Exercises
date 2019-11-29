class Raindrops
  DICTIONARY = {
    3 => 'Pling', 
    5 => 'Plang',
    7 => 'Plong'
  }.freeze 

  # Convert a number to a string, the contents
  # of which depend on the number's factors.
  #
  # If the number has 3 as a factor, output 'Pling'.
  # If the number has 5 as a factor, output 'Plang'.
  # If the number has 7 as a factor, output 'Plong'.
  # If the number does not have 3, 5, or 7 as a factor,
  # just pass the number's digits straight through.
  #
  # @param [Number] number
  #
  # @return [String]
  def self.convert(number)
    conversion = DICTIONARY 
      .select {|divisor, _| (number % divisor).zero? }
      .values.join

    conversion.empty? ? number.to_s : conversion
  end
end
