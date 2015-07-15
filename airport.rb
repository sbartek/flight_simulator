class Airport

  attr_reader :position
  def initialize(x:, y:)
    @position = {x:x, y:y}
  end

end
