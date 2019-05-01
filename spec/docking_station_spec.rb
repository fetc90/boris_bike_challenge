require './lib/docking_station'

describe 'Docking station' do
  it 'should release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end
