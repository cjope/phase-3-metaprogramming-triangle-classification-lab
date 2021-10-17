class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_triangle
    if a == b && a == c
      :equilateral
    elsif a != b && a != c && b != c
      :scalene
    else
    :isosceles
    end
  end

  def check_size?
    a > 0 && b >0 && c >0
  end

  def check_equality?
    a+b>c && a+c>b && b+c>a
  end

  def check_triangle
    raise TriangleError unless check_size? && check_equality?
  end


  class TriangleError < StandardError
  end


end
