class Van

# DEFAULT_CAPACITY = 0

  def initialize(options = {})
    @bikes = []
    # @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def bike_count
    @bikes.count
  end
  def dock (bike)
# # if the capacity is reached, raise an exception
#     raise "Van is maxed out Y'all }" if full?
    @bikes << bike
  end
#   def full?
#     @bikes.count == @capacity
#   end

end
