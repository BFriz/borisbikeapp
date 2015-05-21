require_relative '../lib/bike'
# We're describing the functionality of a specific class, Bike.
describe Bike do
  # this is a specific feature or behaviour
  #that we EXPECT to have
  let(:bike) {Bike.new }
  it 'should not be borken when created' do
    expect(bike.broken?).to be false
  end
  it "should be able to break" do
    bike.break
    expect(bike.broken?).to be true
  end
  it "should be able to be fixed" do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end
end
