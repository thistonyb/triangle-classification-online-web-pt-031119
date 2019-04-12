class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind(triangle)
    if triange.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif triangle.is_equilateral?
      return :equilateral
    elsif triangle.is_isosceles?
      return :isosceles
    else
      return :scalene
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
