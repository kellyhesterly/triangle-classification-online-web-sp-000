require 'pry'

class Triangle
    attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    # binding.pry
    if equilateral
      :equilateral
    elsif isosceles
      :isosceles
    else scalene
      :scalene
    end
    if self == (side_one = 0) && (side_two == 0) && (side_three == 0)
      raise TriangleError
    end
  end

  def equilateral
    (side_one == side_two) && (side_two == side_three) && (side_one == side_three)
  end

  def isosceles
    (side_one == side_two) || (side_one == side_three) || (side_two == side_three)
  end

  def scalene
    (side_one != side_two) && (side_two != side_three) && (side_one != side_three)
  end

class TriangleError < StandardError

end

end
