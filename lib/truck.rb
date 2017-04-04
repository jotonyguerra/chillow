require_relative "box"
require_relative "add_remove"
class Truck

  include Adder
  attr_accessor :current_number, :max_capacity

  def initialize
    @current_number = []
    @max_capacity = 25
  end
end
