require './lib/docking_station'

describe 'Docking station' do
  it 'should release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'should check bike is working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
