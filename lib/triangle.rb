class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if self.length <= 0 ||  self.width <= 0 ||  self.height <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.length == self.width && self.width == self.height
      :equilateral
    elsif self.length == self.width ||  self.height == self.length || self.width == self.height
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
