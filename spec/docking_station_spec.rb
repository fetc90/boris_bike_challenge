require './lib/docking_station'
require './lib/bike'

describe 'Docking station' do
  docking_station = DockingStation.new
  it 'should release bike' do
    expect(docking_station).to respond_to(:release)
  end

  it 'should give an error message if no bike available to release' do
    expect {docking_station.release}.to raise_error("no bike available")
  end

  it 'should have an argument' do
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it 'should dock the bike' do
    bike = Bike.new
    docking_station.dock(bike) # Have to write code for TDD to test otherwise not testing anything
    expect(docking_station.bikes).to include(bike)
  end

  it 'should check for docked bikes' do
    expect(docking_station).to respond_to(:check)
  end

  it 'should give an error message if dock is full' do
    bike = Bike.new
    expect{docking_station.dock(bike)}.to raise_error("docking station is full")
  end
end
