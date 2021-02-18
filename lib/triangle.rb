require 'pry'

class Triangle
    attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    validate_triangle
    if equilateral
      :equilateral
    elsif isosceles
      :isosceles
    else scalene
      :scalene
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

  def validate_triangle
    real_triangle = [(side_one + side_two > side_three) || (side_two + side_three > side_one) || (side_one + side_three > side_two)]
    real_triangle.each do |side|
      real_triangle << false if side <= 0
        raise TriangleError
      end
    end
  end

class TriangleError < StandardError
end

end
