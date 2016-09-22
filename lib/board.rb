class Board

  ROWS = ["A","B","C","D","E","F","G","H","I","J"]
  COLUMNS = [1,2,3,4,5,6,7,8,9,10]

  def initialize
    @ship_positions = []
  end

  def valid_position?(position)
    (ROWS.include?position[0]) && (COLUMNS.include?position[1])
  end

end
