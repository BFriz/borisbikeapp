require_relative '../lib/van'

describe Van do

  it "should be able to take a bike" do
    van = Van.new
    bike = Bike.new
    #The van start empty
    expect(van.bike_count).to eq 0
    #let van take a bike from station
    van.dock(bike)
    # now we expect the station to have 1 bike
    expect(van.bike_count).to eq 1
    
  end


  
end