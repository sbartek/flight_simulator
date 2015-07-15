class Airplane

  attr_reader :position, :flying, :fuel, :speed
  
  def initialize(x:, y:, flying:, speed:, fuel:)
    @position={x: x, y: y}
    @flying= flying
    @speed= speed
    @fuel= fuel    
  end

  def set_speed(speed)
    @speed = [[0, speed].max, 10].min
  end

  def accelarate
    @speed += 2
  end

  def slow_down
    @speed -= 1
  end
    
  def take_off
    @flying = true
    @speed = 2
  end

  def touchdown
    @speed = 0
    @flying = false
  end
  
end
