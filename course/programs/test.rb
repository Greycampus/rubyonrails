# @@@ ruby
class Rectangle
  def initialize(width, height)
    @width, @height = width, height
  end
  def area
    @width * @height
  end
end
class Square < Rectangle
  def initialize(width)
    super(width, width)
  end
end

puts Square.new(10).area #=> 100
