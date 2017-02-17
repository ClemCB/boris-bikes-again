require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'There are no more bikes!' if @bikes.length == 0
   @bikes.pop
  end

  def dock(bike)
    fail "There are already 20 bikes docked - there is no more space!" if @bikes.length >= 20
    @bikes.push(bike)
    bike
  end

end
