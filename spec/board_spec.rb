describe Board do

subject(:board) { described_class.new }

  it 'knows if a position is not contain within its dimensions' do
    expect(board.invalid_position?(['Z',1])).to be true
  end

  it 'knows if a position is within its dimensions' do
    expect(board.invalid_position?(['A',1])).to be false
  end

  it 'knows where the ships are located' do
    player = Player.new
    player.place_ship(['A',1], 'N')
    expect(player.board.ships.first.location).to eq(['A',1])
  end


end
