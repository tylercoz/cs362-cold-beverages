class Vessel
  attr_reader :name, :volume

  def initialize(name, capacity = 2, volume=0)
    @name = name
    @volume = volume
    @capacity = capacity
  end

  def empty?
    @volume == 0
  end

  def fill
    @volume = @capacity
  end

end
