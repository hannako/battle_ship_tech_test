require 'player'
require 'ship'
require 'board'

RSpec.describe 'Playing the game', feature: true do

  # As a player
  # So that I can win the game
  # I would like to be able to fire at my opponent's board
  it 'a player can fire at their opponent and score a point' do
    player = Player.new
    player.place_ship(['A',1],'N')
    player.fire(['A',1])
    expect(player.hit_count).to eq 1
  end

  it 'if they miss their opponent they do not score a point' do
    player = Player.new
    player.place_ship(['A',1],'N')
    player.fire(['B',1])
    expect(player.hit_count).to eq 0
  end
end
