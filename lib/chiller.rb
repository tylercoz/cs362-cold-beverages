class Chiller

  attr_reader :capacity, :temperature, :power, :contents

  def initialize(capacity: 100, room_temperature: 70)
    @capacity = capacity
    @room_temperature = room_temperature
    @temperature = @room_temperature
    @power = :off
    @contents = []
  end

  def turn_on
    @power = :on
  end

  def turn_off
    @power = :off
  end

  def add(item)
    @contents << item
  end

  def remaining_capacity
    remaining = @capacity
    @contents.each do |item|
      remaining -= item.volume
    end
    remaining
  end

  def set_level(level)
    @temperature = @room_temperature - level * 5
  end

end
