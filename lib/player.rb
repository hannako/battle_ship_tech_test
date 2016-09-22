class Player

attr_reader :ships

  def initialize
    @ships = []
  end

  def place_ship(location)
    @ships << Ship.new(location)
  end

end
