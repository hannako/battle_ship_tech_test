
describe Player do

  subject(:player)   { described_class.new }

  it 'can place a ship on a board' do
    player.place_ship(['A',1], 'N')
    expect(player.ships.count).to eq 1
  end

  it 'recieves an error if they chose an invalid location' do
    expect{player.place_ship(['Z',1],'N')}.to raise_error 'not a valid location'
  end

  it 'can fire at ships and gets a hit point for a hit' do
    player.place_ship(['A',1], 'N')
    player.fire(['A',1])
    expect(player.hit_count).to eq 1
  end

  it 'can fire at ships and get 0 hit points for a miss' do
    player.place_ship(['A',1], 'N')
    player.fire(['B',1])
    expect(player.hit_count).to eq 0
  end



end
