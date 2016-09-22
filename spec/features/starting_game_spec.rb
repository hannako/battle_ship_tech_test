require 'player'
require 'ship'
require 'board'

RSpec.describe 'Preparing for the game', feature: true do

  # As a player
  # So that I can prepare for the game
  # I would like to place a ship in a board location

  # As a player
  # So that I can create a layout of ships to outwit my opponent
  # I would like to be able to choose the directions my ships face in

  it 'a player places a ship in a board location' do
    player = Player.new
    player.place_ship(['A',1],"N")
    expect(player.ships.count).to eq 1
    expect(player.ships.first.location).to eq(['A',1])
    expect(player.ships.first.direction).to eq('N')
  end

  # As a player
  # So that I can have a coherent game
  # I would like ships to be constrained to be on the board

  it 'a player can only place ships on the board' do
    player = Player.new
    expect{player.place_ship(['Z',1],"N")}.to raise_error 'not a valid location'
  end

end
