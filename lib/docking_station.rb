require 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

def release
  raise Exception.new "no bike available" if @bikes.empty?
end

def dock(bike)
  raise Exception.new "docking station is full" if bikes.count >= 20
  @bikes.push(bike)
end


def check(bike)
end

end
