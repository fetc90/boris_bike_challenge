require './lib/docking_station'
require './lib/bike'

describe DockingStation do

  bike = Bike.new

  it 'should release bike' do
    expect(subject.release).to respond_to(:release)
  end

  it 'should give an error message if no bike available to release' do
    expect {subject.release}.to raise_error("no bike available")
  end

  it 'should have an argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'should dock the bike' do
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'should check for docked bikes' do
    expect(subject).to respond_to(:check)
  end

  it 'should give an error message if dock is full' do
    20.times { subject.dock(bike) }
    expect {subject.dock(bike)}.to raise_error("docking station is full")
  end

  it 'should check bike is working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

end
