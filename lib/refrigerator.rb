class Refrigerator

  attr_reader :chiller, :freezer, :control_panel, :water_dispenser, :water_reservoir

  def initialize(chiller, freezer, water_dispenser, water_reservoir)
    @chiller = chiller
    @freezer = freezer
    @control_panel = control_panel
    @water_dispenser = water_dispenser
    @water_reservoir = water_reservoir
    @power = :off
  end

  def chill(item)
    @chiller.add(item)
  end

  def chiller_contents
    @chiller.contents
  end

  def freeze(item)
    @freezer.add(item)
  end

  def freezer_contents
    @freezer.contents
  end

  def total_capacity
    @chiller.capacity + @freezer.capacity
  end

  def remaining_capacity
    @chiller.remaining_capacity + @freezer.remaining_capacity
  end

  def plug_in
    @power = :on
    @chiller.turn_on
    @freezer.turn_on
  end

  def unplug
    @power = :off
    @chiller.turn_off
    @freezer.turn_off
  end

  def set_chiller_level(level)
    @chiller.set_level(level)
  end

  def set_freezer_level(level)
    @freezer.set_level(level)
  end

  def to_s
    <<~STATUS
    Power: #{@power}
    Storage: #{remaining_capacity} of #{total_capacity} available
    Temps: Chiller is #{@chiller.temperature}, Freezer is #{@freezer.temperature}
    Water: Reservoir has #{@water_reservoir.volume} remaining.
    STATUS
  end

end
