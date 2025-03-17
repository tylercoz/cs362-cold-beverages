require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
  let(:wr) { WaterReservoir.new }

  it 'is empty by default' do
    expect(wr.empty?).to be true
  end

  it 'can be filled' do
    wr.fill
    expect(wr.volume).to eq wr.capacity
  end

  it 'drains the correct amount' do
    drain_amount = 3
    wr.fill
    wr.drain(drain_amount)
    expect(wr.volume).to eq(wr.capacity - drain_amount)
  end
end
