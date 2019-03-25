class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind(length, width, height)
    if length == width && width == height
      :equilateral
    elsif length == width ||  height == length || width == height
      :isosceles
    else
      :scalene
    end
  end

class TriangleError < StandardError
end

end
