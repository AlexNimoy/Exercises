class Acronym
  # Convert a phrase to its acronym.
  # Techies love their TLA (Three Letter Acronyms)!
  # Help generate some jargon by writing a program that converts a long name
  # like Portable Network Graphics to its acronym (PNG).
  #
  # abbreviate
  # 
  # @param [String]  
  # @return [String]
  def self.abbreviate(string)
    string.split(/[ ,_-]+/).map(&:chr).map(&:upcase).join
  end
end
