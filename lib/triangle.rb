class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind(triangle)
    if triangle.length <= 0 ||  triangle.width <= 0 ||  triangle.height <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif length == width && width == height
      :equilateral
    elsif length == width ||  height == length || width == height
      :isosceles
    else
      :scalene
    end
  end

class TriangleError < StandardError
  def message
    "Error"
  end
end

end
