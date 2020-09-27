class Triangle
  # write code here
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    sum1 = @x + @y
    sum2 = @x + @z
    sum3 = @y + @z
    
    if @x <= 0 || @y <= 0 || @z <= 0
      raise TriangleError
    elsif sum1 <= @x || sum2 <= @x ||sum3 <= @x
      raise TriangleError
    elsif sum1 <= @y || sum2 <= @y ||sum3 <= @y
      raise TriangleError
    elsif sum1 <= @z || sum2 <= @z ||sum3 <= @z
      raise TriangleError
    end
      
    if @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @y == @z || @x == @z
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
end
