require_relative "dwelling"
require_relative "occupant"
require_relative "add_remove"

class Apartment < Dwelling
   include Adder
  attr_accessor :rent_price, :lease_end_date, :lease_start_date, :occupants, :first_name, :last_name, :max_occupants

  def initialize(rent_price, lease_start_date = nil, lease_end_date = nil)
    @rent_price = rent_price
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @occupants = []
    @max_occupants = 2
  end

  def add_roomate(first_name, last_name)
    if @occupants.size < @max_occupants
      @occupants << Occupant.new(@first_name=first_name , @last_name = last_name)
    end
  end

  def remove_roomate
    @occupants.pop
  end
end
