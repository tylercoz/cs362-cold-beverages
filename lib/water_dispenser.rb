class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
  end

  def current_volume
    @reservoir.current_water_volume
  end

end
