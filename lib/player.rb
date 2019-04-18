class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def hit_points
   p @hit_points - 27
  end
end