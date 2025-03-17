class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir = WaterReservoir.new)
    @reservoir = reservoir
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
  end

  def current_volume
    @reservoir.volume
  end

end
