class Board

  ROWS = ["A","B","C","D","E","F","G","H","I","J"]
  COLUMNS = [1,2,3,4,5,6,7,8,9,10]

  attr_reader :ships

  def initialize
    @ships = []
  end

  def invalid_position?(position)
    !(ROWS.include?position[0]) && (COLUMNS.include?position[1])
  end

  def hits_target?(position)
    ships.each do |ship|
      ship.location == position
    end
  end

end
