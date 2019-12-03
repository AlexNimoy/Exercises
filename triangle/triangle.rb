class Triangle
  attr_reader :sides
  # Determine if a triangle is equilateral, isosceles, or scalene.
  #
  # @param sides [Array] sides of triangle
  def initialize(sides)
    @sides = sides
  end

  # An _equilateral_ triangle has all three sides the same length.
  def equilateral?
    is_triangle? && uniq_sides == 1
  end

  # An _isosceles_ triangle has at least two sides the same length.
  # (It is sometimes
  # specified as having exactly two sides the same length,
  # but for the purposes of this exercise we'll say at least two.)
  def isosceles?
    is_triangle? && uniq_sides <= 2
  end

  # A _scalene_ triangle has all sides of different lengths.
  def scalene?
    is_triangle? && uniq_sides == 3
  end

  private

  # For a shape to be a triangle at all, all sides have to be of length > 0,
  # and the sum of the lengths of any two sides must be greater
  # than or equal to the length of the third side.
  # See {Triangle Inequality}[https://en.wikipedia.org/wiki/Triangle_inequality].
  def is_triangle?
    sides.all? { |side| side < sides.sum - side }
  end

  def uniq_sides
    sides.uniq.size
  end
end
