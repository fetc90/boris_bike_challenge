require './lib/docking_station'
require './lib/bike'

describe 'Docking station' do
  docking_station = DockingStation.new
  it 'should release bike' do
    expect(docking_station).to respond_to(:release)
  end

  it 'should check bike is working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'should dock the bike' do
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it 'should check for docked bikes' do
    expect(docking_station).to respond_to(:check)
  end



end
