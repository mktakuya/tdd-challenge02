class Circle
  def initialize(radius)
    @radius = radius
  end

  def calc_rounded_area
    (@radius ** 2 * Math::PI).round
  end
end
