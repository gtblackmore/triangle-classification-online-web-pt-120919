class Triangle
  attr_reader :a, :b, :c
  
   def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.valid
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  def valid
    side_length = @a <= 0 || @b <= 0 || @c <= 0
    length_sum = (a + b) > c || (a + c) > b || (b + c) > a
    side_length || length_sum
  end

  class TriangleError < StandardError
  end
  
  
end
