class Player

  attr_reader :name, :hit_points

  DEFAULT_HITPOINTS = 60
  HIT = 10

  def initialize(name, hit_points = DEFAULT_HITPOINTS)
    @name = name
    @hit_points = hit_points
  end

  def damage_received
    @hit_points -= HIT
  end

end
