class Truck
  attr_accessor :boxes
  attr_reader :name
  # include Box

  def initialize(num_boxes)
    @num_boxes = num_boxes
    @max_boxes = 25
  end

  def full?
   @num_boxes >= @max_boxes
  end

  def add_box
    if @num_boxes < @max_boxes
      @num_boxes += 1
    end
  end
end


class Box

  def initialize(name)
    @name =
    @owner = @occupant.first_name #??
  end
end
