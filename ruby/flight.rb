module Flight 
  def takeoff (altitude)
    puts "Taking off and ascending until reaching #{altitude}."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.takeoff(39)

plane = Plane.new
plane.takeoff(30000)