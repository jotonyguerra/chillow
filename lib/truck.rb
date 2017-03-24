require_relative "box"
require_relative "add_remove"
class Truck
  include Adder
  attr_accessor :num_boxes, :max_boxes
  attr_reader :name

  def initialize(num_boxes)
    @num_boxes = num_boxes
    @max_boxes = 25
  end




end
