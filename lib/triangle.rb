class Triangle
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind 
    # All sides equal = :equilateral
  end
  
end
