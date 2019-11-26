class Phrase
  attr_reader :words
  # Given a phrase, count the occurrences of each word in that phrase.
  # For example for the input `"olly olly in come free"`

  # @params [String]
  def initialize(words)
    @words = words.scan(/\b[\w']+\b/)
  end

  # @return [Hash]
  def word_count
    words.group_by(&:downcase).transform_values(&:size)
  end
end
