class Vessel
  attr_reader :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def empty?
    @volume == 0
  end

end
