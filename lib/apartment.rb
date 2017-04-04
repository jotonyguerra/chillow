require_relative "dwelling"
require_relative "occupant"
require_relative "add_remove"

class Apartment < Dwelling
   include Adder
  attr_accessor :rent_price, :lease_end_date, :lease_start_date, :current_number, :first_name, :last_name, :max_capacity

  def initialize(rent_price, max_capacity, lease_start_date = nil, lease_end_date = nil)
    @rent_price = rent_price
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @current_number = []
    @max_capacity = max_capacity
  end
end
