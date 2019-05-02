require './lib/bike'

describe Bike do
it { is_expected.to respond_to :working?}

it 'should check bike is working' do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
end

end
