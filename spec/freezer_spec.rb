require_relative '../lib/freezer'

describe 'A freezer' do

  let(:fz) { Freezer.new }

  it 'turns off and on' do
    fz.turn_on
    expect(fz.power).to eq :on
    fz.turn_off
    expect(fz.power).to eq :off
  end

  it 'can add items' do
    item = Item.new("hamburgers", 12)
    fz.add(item)
    expect(fz.contents).to include item
  end

  it 'has an accurate remaining capacity' do
    volume = 20
    items = 3
    fz.add(Item.new("hamburgers", volume))
    fz.add(Item.new("hotdogs", volume))
    fz.add(Item.new("tequila", volume))
    expect(fz.remaining_capacity).to eq(fz.capacity - (volume * items))
  end

  it 'sets temps in factors of 10' do
    fz = Freezer.new(room_temperature: 90)
    fz.set_level(2)
    expect(fz.temperature).to eq(70)
  end

end
