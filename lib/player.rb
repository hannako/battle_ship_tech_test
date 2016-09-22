class Player

attr_reader :ships

  def initialize
    @ships = []
  end

  def place_ship(location,direction)
    @ships << Ship.new(location,direction)
  end

end
