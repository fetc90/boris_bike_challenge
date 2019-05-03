require 'docking_station'
require 'bike'

describe DockingStation do

  bike = Bike.new

  # it 'should release bike' do
  #   subject.dock()
  #   expect(subject.release).to eq bike
  # end

  it 'should give an error message if no bike available to release' do
    expect {subject.release}.to raise_error("no bike available")
  end

  it 'should have an argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

describe '#dock' do

  it 'should dock the bike' do
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'should give an error message if dock is full' do
    20.times { subject.dock(bike) }
    expect {subject.dock(bike)}.to raise_error("docking station is full")
  end

end

describe '#release_bike' do

  it 'should release bike' do
    subject.dock(bike)
    expect(subject.release).to eq bike
  end

  it 'should raise error message if no bike available' do
    expect {subject.release}.to raise_error "no bike available"
  end

end

end
