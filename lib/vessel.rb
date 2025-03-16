class Vessel
  attr_reader :name, :volume

  def initialize(name, volume)
    @name = name
    @volume = volume
  end

  def empty?
    !@full
  end

  def fill
    @full = true
  end

end
