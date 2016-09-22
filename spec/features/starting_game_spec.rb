# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location
require 'player'
require 'ship'
require 'board'

RSpec.describe 'Preparing for the game', feature: true do

  it 'a player places a ship in a board location' do
    player = Player.new
    player.place_ship(['A',1])
    expect(player.ships.count).to eq 1
    expect(player.ships.first.location).to eq(['A',1])
  end
end
