class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir = WaterReservoir.new)
    @reservoir = reservoir
  end

  def dispense(vessel)
    amount = reservoir.drain(vessel.volume)
    vessel.fill(amount)
  end

  def current_volume
    @reservoir.volume
  end

end
