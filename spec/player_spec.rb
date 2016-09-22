
describe Player do

  subject(:player)   { described_class.new }
  let(:board)        { double('board') }
  let(:ship )        { double('ship') }
  before(:each)      { allow(ship).to receive(:location).and_return(:A1) }

  it 'can place a ship on a board' do
    player.place_ship(['A',1], 'N')
    expect(player.ships.count).to eq 1
  end

  it 'a player can only place ships on the board' do
    expect{player.place_ship(['Z',1],"N")}.to raise_error 'not a valid location'
  end

end
