# class Triangle
#   attr_accessor :side1, :side2, :side3
#  def initialize(side1, side2, side3)
#   @side1 = side1
#   @side2 = side2
#   @side3 = side3
#  end

#  def kind
#    if side1 == 0 && side2 == 0 && side3 == 0 ||
#     begin
#       raise TriangleError
#     rescue TriangleError => error
#       puts error.message
#     end

#   elsif side1 + side2 < side3 || 
#   side2 + side3 < side1 ||
#   side1 + side3 < side2 ||
#   side1 == 0 || 
#   side2 == 0 || 
#   side3 == 0 ||
#     begin
#       raise TriangleError
#     rescue TriangleError => error
#       puts error.message
#     end
#     elsif side1 == side2 && side2 == side3 && side1 == side3
#        :equilateral
#     elsif side1 == side2 || side2 == side3 || side1 ==side3
#         :isosceles
#     else                      
#     :scalene
#     end
#  end
#  class TriangleError < StandardError
#   # def message
#   #   "This is not a triangle."
#   # end
#  end
# end

# class Triangle
#   attr_reader :a, :b, :c

#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c 
#   end

#   def kind
#     validate_triangle
#     if a==b && b == c
#       :equilateral
#     elsif
#       a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#     def validate_triangle
#       real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
#       [a, b, c].each do |side|
#         real_triangle << false if side <= 0
#         raise TriangleleError if real_triangle.include?(false)
#       end
#       end
#     class TriangleError < StandardError
#     end
# end


class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
