class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind(triangle)


  end

  def is_equilateral?
    if @length_one == @length_two && @length_two == @length_three
  end

  #Has to be called after equilateral.
  def is_isosceles?
    if @length_one == @length_two || @length_one == @lenght_three || @length_two == @lenght_three
  end

  class TriangleError < StandardError

  end

end
