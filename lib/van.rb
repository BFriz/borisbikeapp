class Van

DEFAULT_CAPACITY = 5

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end
  def dock (bike)
# # if the capacity is reached, raise an exception
    raise "Van is maxed out Y'all }" if full?
    @bikes << bike
  end
  def dropoff(bike)
    @bikes.delete(bike)
  end
  def full?
    @bikes.count == @capacity
  end
  def available_bikes
    @bikes.reject {|bike| bike.working? }
  end
end
