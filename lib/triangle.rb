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

  def is_isosceles? #Has to be called after equilateral.
    if @length_one == @length
  end

  class TriangleError < StandardError

  end

end
