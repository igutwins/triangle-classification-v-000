class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind(length, width, height)
    if length == width == height
      :equilateral
    elsif

    end
  end

class TriangleError < StandardError
end

end
