class Player

attr_reader :ships, :board

  def initialize
    @ships = []
    @board = Board.new
  end

  def place_ship(location,direction)
    if board.valid_position?(location)
      @ships << Ship.new(location,direction)
    else
      raise 'not a valid location'
    end
  end

  




end
