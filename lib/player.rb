class Player

attr_reader :ships, :board, :hit_count

  def initialize
    @ships = []
    @board = Board.new
    @hit_count = 0
  end

  def place_ship(location,direction)
    fail 'not a valid location' if board.invalid_position?(location)
    @ships << Ship.new(location,direction)
    add_to_board
  end

  def fire(location)
    if board.hits_target?(location)
      @hit_count += 1
    else @hit_count
    end
  end

private
  def add_to_board
    board.ships << ships.last
  end
end
