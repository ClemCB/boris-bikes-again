require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
   fail 'There are no more bikes!' if empty?

   @bikes.each do |x|
     return x if x.working?
   end
   raise "No working bikes available!" #if @bikes.working
   #@bikes.pop
  end

  def dock(bike)
    fail "There are already the maximum number of bikes docked - there is no more space!" if full?
    @bikes << bike
    bike
  end

  private

  def full?
    @bikes.length >= capacity
  end

  def empty?
    @bikes.empty?
  end


end
