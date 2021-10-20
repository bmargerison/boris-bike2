require_relative '../lib/bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    if bike == nil
      raise Exception.new "There are no bikes in the dock"
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end

end