class Freezer < Chiller

  def set_level(level)
    @temperature = @room_temperature - level * 10
  end

end
