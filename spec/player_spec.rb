
describe Player do

  subject(:player)   { described_class.new }
  let(:board)        { double('board') }
  let(:ship )        { double('ship') }
  before(:each)      { allow(ship).to receive(:location).and_return(:A1) }

  it 'can place a ship on a board' do
    player.place_ship(['A',1], 'N')
    expect(player.ships.count).to eq 1
  end

end
