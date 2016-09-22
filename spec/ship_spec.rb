describe Ship do

  subject(:ship)  { described_class.new(['A',1]) }
  # let (:board) { double('board') }
  context 'preparing for the game' do

    it 'a ship has a board location' do
      expect(ship.location).to eq(['A',1])
    end


  end
end
