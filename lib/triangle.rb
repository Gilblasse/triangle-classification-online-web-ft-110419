require 'pry'
class Triangle
  attr_accessor :all_sides 
  
  def initialize(side_a,side_b,side_c)
    @all_sides = [side_a,side_b,side_c]
  end
  
  def kind 
    inequality_check
    triangle_type = all_sides.each_with_object({}) do |v,h| 
                    		h[v] ||= 0 
                    		h[v] += 1
                  	 end.values.max
          
    case triangle_type
      when 3
        :equilateral
      when 2
        :isosceles
      when 1
        :scalene 
    end
  end
    
    def inequality_check
      a,b,c = all_sides
      inequality_therom = [a < b + c, b < a + c, c < a + b].any? false
      raise TriangleError if inequality_therom
    end
  
  class TriangleError < StandardError
  end
  
end




