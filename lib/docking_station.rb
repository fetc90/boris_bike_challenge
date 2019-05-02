class DockingStation
attr_reader :bikes

def initialize
  @bikes = []
end

def release
  Bike.new
end


def dock(bike)
  @bikes.push(bike)
end

def check(bike)

end

end
