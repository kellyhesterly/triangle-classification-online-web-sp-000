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
    if isosceles
      :isosceles
    else scalene
      :scalene
    end
    if side_one == 0 && side_two == 0 && side_three == 0
      raise TriangleError
    rescue TriangleError => error
    end
  else equilateral
    :equilateral
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
