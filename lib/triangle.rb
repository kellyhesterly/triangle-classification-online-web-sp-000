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
    self.equilateral?
      :equilateral
    self.isosceles?
      :isosceles
    self.scalene?
      :scalene
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
