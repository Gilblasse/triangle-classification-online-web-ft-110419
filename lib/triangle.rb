class Triangle
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind 
    sides = 
    # All sides equal = :equilateral
    sides.each_with_object({}) do |v,h| 
  		h[v] ||= 0 
  		h[v] += 1
	  end.values.max
    
    
    
    
    
  end
  
end
