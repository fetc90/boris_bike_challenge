require_relative 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "docking station is full" if @bikes.count >= 20
    @bikes << bike
  end

def release
  fail "no bike available" if @bikes.empty?
  @bikes.pop
end

# def check(bike)
# end

end
