require 'pry'

class Triangle
  
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def triangle?(sides)
    sides = sides.permutation.to_a
    sides.all? do |s|
      s[0] + s[1] > s[2]
    end
  end
  
  def kind
    sides = [x, y, z]
    if triangle?(sides)
      sides = sides.uniq
      if sides.length == 1
        :equilateral
      elsif sides.length == 2 
        :isosceles
      else
        :scalene
      end
    else 
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end

# class Triangle
#   def initialize(x, y, z)
#     @x = x
#     @y = y
#     @z = z
#   end
  
#   def kind
#     sums = [@x + @y, @x + @z, @y + @z]
#     sides = [@x, @y, @z]
    
#     if sums.any?{|sum|sides.any?{|side|sum <= side}}
#       raise TriangleError
#     end
    
#     unique_sides = sides.uniq.count
#     if unique_sides == 1
#       :equilateral 
#     elsif unique_sides == 2
#       :isosceles 
#     else
#       :scalene 
#     end
#   end
  
#   class TriangleError < StandardError
#   end
# end
