require_relative '../lib/item'

describe 'An item of food or a beverage' do
  it 'has a name and volume' do
    item = Item.new("fake", 50)
    expect(item.name).to eq "fake"
    expect(item.volume).to eq 50
  end

end
