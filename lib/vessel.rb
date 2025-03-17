class Vessel
  attr_reader :name, :volume, :capacity

  def initialize(name, capacity = 2, volume=0)
    @name = name
    @capacity = capacity
    @volume = volume
  end

  def empty?
    @volume == 0
  end

  def fill(volume)
    @volume = [@capacity, volume].min
  end
end
