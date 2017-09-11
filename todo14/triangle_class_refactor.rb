### CLASS TRIANGLE

class Triangle

  # exception :TriangleError
  attr_reader :side1, :side2, :side3, :kind

  def initialize(a, b, c)
    @kind
    @side1 = a
    @side2 = b
    @side3 = c
    self.assign_kind
    self.side_check
  end

  def assign_kind

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

def side_check
  raise Error, "This triangle does not have allowable dimentions"  if a == 0 || b == 0 || c == 0

end





end