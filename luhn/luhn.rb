class Luhn
  # Given a number determine whether or not it is valid per the Luhn formula.
  # 
  # The {Luhn algorithm}[https://en.wikipedia.org/wiki/Luhn_algorithm] is
  # a simple checksum formula used to validate a variety of identification
  # numbers, such as credit card numbers and Canadian Social Insurance
  # Numbers.
  #
  # @param [String] card_number
  #
  # @return [Boolean]
  def self.valid?(card_number)
    card_number
      .gsub(/\s+/, '')
      .tap { |s| return false unless s[/\A\d\d+\z/] }
      .chars
      .reverse
      .map(&:to_i)
      .map.with_index { |d, i| i.odd? ? d * 2 : d }
      .map { |d| d > 9 ? d - 9 : d }
      .sum % 10 == 0
  end
end
