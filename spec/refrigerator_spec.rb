require_relative '../lib/refrigerator'

describe 'A refrigerator' do
  let(:rf) {Refrigerator.new(
    Chiller.new,
    Freezer.new,
    WaterDispenser.new,
    WaterReservoir.new
  )}
  let(:item) { Item.new('fake', 5) }

  it 'can add items to chiller' do
    rf.chill(item)
    expect(rf.chiller_contents).to include item
  end

  it 'can add items to freezer' do
    rf.freeze(item)
    expect(rf.freezer_contents).to include item
  end

  it 'has an accurate remaining and total capacity' do
    items = 7
    rf.freeze(item)
    rf.freeze(item)
    rf.freeze(item)
    rf.chill(item)
    rf.chill(item)
    rf.chill(item)
    rf.chill(item)
    expect(rf.remaining_capacity).to eq(rf.total_capacity - items * item.volume)
  end

  it 'should power chiller and freezer when turning on' do
    rf.plug_in
    expect(rf.chiller.power).to eq :on
    expect(rf.freezer.power).to eq :on
  end

  it 'should power chiller and freezer when turning off' do
    rf.unplug
    expect(rf.chiller.power).to eq :off
    expect(rf.freezer.power).to eq :off
  end

  it 'can set the chiller level' do
    allow(rf.chiller).to receive(:set_level).and_call_original
    rf.set_chiller_level(2)
    expect(rf.chiller).to have_received(:set_level)
  end

  it 'can set the freezer level' do
    allow(rf.freezer).to receive(:set_level).and_call_original
    rf.set_freezer_level(2)
    expect(rf.freezer).to have_received(:set_level)
  end

end
