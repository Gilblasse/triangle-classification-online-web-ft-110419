require 'pry'
class Triangle
  attr_accessor :all_sides 
  
  def initialize(side_a,side_b,side_c)
    @all_sides = [side_a,side_b,side_c]
  end
  
  def kind 
    triangle_check = all_sides.any? {|num| num == 0 || num.angle.class == Float}
    if triangle_check 
        raise TriangleError
      else
        check_equality = all_sides.each_with_object({}) do |v,h| 
                        		h[v] ||= 0 
                        		h[v] += 1
                      	 end.values.max
          
        case check_equality
          when 3
            :equilateral
          when 2
            :isosceles
          when 1
            :scalene 
          else
            raise TriangleError
        end
    end
  end
  
  
  
  class TriangleError < StandardError
  end
  
end




