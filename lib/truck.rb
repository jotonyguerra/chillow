class Truck
  attr_accessor :boxes
  attr_reader :name
  include Box

  def initialize(boxes)
    @boxes = boxes
  end
end


class Box

  def initialize(name)
    @name = @occupant.first_name
  end
end
