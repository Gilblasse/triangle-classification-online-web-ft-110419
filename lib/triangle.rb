class Triangle
  attr_accessor :all_sides 
  
  def initialize(side_a,side_b,side_c)
    @all_sides = [side_a,side_b,side_c]
  end
  
  def kind 
    # All sides equal = :equilateral
    check_equality = all_sides.each_with_object({}) do |v,h| 
                    		h[v] ||= 0 
                    		h[v] += 1
                  	 end.values.max
      
    case check_equality
      when 3
    end
  end
  
end
