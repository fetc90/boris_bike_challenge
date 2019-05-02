class DockingStation
attr_reader :bikes

def initialize
  @bikes = []
end

def release
  if @bikes.empty?
    raise Exception.new "no bike available"
  end 
end


def dock(bike)
  @bikes.push(bike)
end

def check(bike)

end

end
