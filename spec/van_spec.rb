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
    15.times { van.dock(Bike.new) }
    expect(van.full?).to be true
  end


  
end