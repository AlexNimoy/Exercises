class ResistorColorDuo
  COLORS = {
    'black'  => 0,
    'brown'  => 1,
    'red'    => 2,
    'orange' => 3,
    'yellow' => 4,
    'green'  => 5,
    'blue'   => 6,
    'violet' => 7,
    'grey'   => 8,
    'white'  => 9
  }

  # * Each resistor has a resistance value.
  # * Resistors are small - so small in fact that if you printed
  # the resistance value on them, it would be hard to read.
  #
  # To get around this problem, manufacturers print color-coded
  # bands onto the resistors to denote their resistance values.
  # Each band has a position and a numeric value.
  # For example, if they printed a brown band (value 1)
  # followed by a green band (value 5),
  # it would translate to the number 15.
  #
  # @param colors [Array<String>] color-coded bands
  #
  # @return [Number]
  def self.value(colors)
    colors.first(2).map(&COLORS).join.to_i 
  end
end
