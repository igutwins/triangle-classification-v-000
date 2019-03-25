class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length <= 0 ||  width <= 0 ||  height <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    if length == width && width == height
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
