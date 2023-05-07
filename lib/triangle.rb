class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    type = nil
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    end

    if @a == @b && @a == @c
      type = :equilateral
    elsif @a == @b || @a == @c || @b == @c
      type = :isosceles
    else
      type = :scalene
    end
    type
  end

  class TriangleError < StandardError
    def message
      "This triangle is invalid!"
    end
  end

end