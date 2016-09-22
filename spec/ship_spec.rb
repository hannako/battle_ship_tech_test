describe Ship do

  subject(:ship)  { described_class.new(['A',1],"N") }
  # let (:board) { double('board') }
  context 'preparing for the game' do

    it 'a ship has a board location' do
      expect(ship.location).to eq(['A',1])
    end

    it 'a ship has a board direction' do
      expect(ship.direction).to eq('N')
    end


  end
end
