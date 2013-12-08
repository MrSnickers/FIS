### CLASS TRIANGLE

class Triangle

  attr_reader :side1, :side2, :side3, :kind

  def initialize(a, b, c)
    @kind
    @side1 = a
    @side2 = b
    @side3 = c
    if side1 == side2
      if side1 == side3
        @kind = :equilateral
      else 
        @kind = :isosceles
      end
    elsif side2 == side3 || side1 == side3
      @kind = :isosceles
    else
      @kind = :scalene
    end

  end





end