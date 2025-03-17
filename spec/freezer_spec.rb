require_relative '../lib/freezer'

describe 'A freezer' do

  it 'sets temps in factors of 10' do
    fz = Freezer.new(room_temperature: 90)
    fz.set_level(2)
    expect(fz.temperature).to eq(70)
  end

end
