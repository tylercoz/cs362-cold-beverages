require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  it 'dispenses the correct amount of water' do
      bottle = double(volume: 5)
      reserv = WaterReservoir.new
      full_reserv = reserv.fill
      dispenser = WaterDispenser.new(reserv)
      dispenser.dispense(bottle)
      expect(dispenser.current_volume).to eq (full_reserv - bottle.volume)
    end
  end
