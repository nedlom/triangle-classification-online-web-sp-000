class Triangle
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    sums = [@x + @y, @x + @z, @y + @z]
    sides = [@x, @y, @z]
    
    if sums.any?{|sum|sides.any?{|side|sum <= side}}
      raise TriangleError
    end
    
    unique_sides = sides.uniq.count
    if unique_sides == 1
      :equilateral 
    elsif unique_sides == 2
      :isosceles 
    else
      :scalene 
    end
  end
  
  class TriangleError < StandardError
  end
end
    
=begin   
    if @x <= 0 || @y <= 0 || @z <= 0
      raise TriangleError
    elsif sum1 <= @x || sum2 <= @x ||sum3 <= @x
      raise TriangleError
    elsif sum1 <= @y || sum2 <= @y ||sum3 <= @y
      raise TriangleError
    elsif sum1 <= @z || sum2 <= @z ||sum3 <= @z
      raise TriangleError
    end

      
    if sums.uniq.count == 1
      :equilateral
    elsif sums.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
end
=end