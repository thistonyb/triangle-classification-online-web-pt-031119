class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if self.is_triangle? == false
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.is_equilateral?
      return :equilateral
    elsif self.is_isosceles?
      return :isosceles
    else
      return :scalene
  end

  def is_triangle?
    side_array = [@length_one, @length_two, @length_three]
    sorted_sides = side_array.sort
    if sorted_sides[0] <= 0
      return false
    end
    return sorted_sides[0] + sorted_sides[1] > sorted_sides[2]
  end

  def is_equilateral?
    return @length_one == @length_two && @length_two == @length_three
  end

  #Has to be called after equilateral.
  def is_isosceles?
    return @length_one == @length_two || @length_one == @lenght_three || @length_two == @lenght_three
  end

  class TriangleError < StandardError

  end

end
