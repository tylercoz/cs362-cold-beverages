class WaterReservoir

  attr_reader :capacity
  attr_accessor :volume

  def initialize(capacity: 10, initial_water_volume: 0)
    @capacity = capacity
    @volume = initial_water_volume
  end

  def empty?
    @volume == 0
  end

  def fill
    @volume = @capacity
  end

  def drain(volume)
    @volume = [0, @volume - volume].max # Is this what god intended?
    [@volume, volume].min
  end

end
