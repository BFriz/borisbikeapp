require_relative '../lib/van'

describe Van do
let(:bike) { Bike.new }
let(:van) { Van.new(:capacity => 15) }
  it "should be able to take a bike" do
    #The van start empty
    expect(van.bike_count).to eq 0
    #let van take a bike from station
    van.dock(bike)
    # now we expect the van to have 1 bike
    expect(van.bike_count).to eq 1
  end
  it "should drop a bike at the garage" do
   van.dock(bike)
   van.dropoff(bike)
   expect(van.bike_count).to eq 0
  end
  it "should know when it's full" do
    expect(van.full?).not_to be true
    15.times { van.dock(:bike) }
    expect(van.full?).to be true
  end

  it "should not accept a bike if it's full" do 
    15.times { van.dock(:bike)}
    expect { van.dock(bike) }.to raise_error RuntimeError
  end
it "should provide the list of broken bikes" do
  working_bike, broken_bike = Bike.new, Bike.new
  working_bike.break
  van.dock(working_bike)
  van.dock(broken_bike)
  expect(van.available_bikes).to eq([broken_bike])
end

  
end