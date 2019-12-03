class Isogram
  # Determine if a word or phrase is an isogram.  
  #
  # An isogram (also known as a "nonpattern word")
  # is a word or phrase without a repeating letter,
  # however spaces and hyphens are allowed to appear multiple times.  
  #
  # Examples of isograms: 
  #
  # - lumberjacks
  # - background
  # - downstream
  # - six-year-old
  #
  # The word *isograms*, however, is not an isogram, because the s repeats.  
  #
  # @param input [String] a word or phrase
  def self.isogram?(input)
    letters = input.downcase.chars - [' ', '-']
    letters == letters.uniq
  end
end

