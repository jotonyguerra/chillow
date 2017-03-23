require_relative "dwelling"
require_relative "occupant"

class Apartment < Dwelling
  # include Occupant
  #ask about modules vs inheritance
  attr_accessor :rent_price, :lease_end_date, :lease_start_date, :occupants, :first_name, :last_name

  def initialize(rent_price, lease_start_date = nil, lease_end_date = nil)
    @rent_price = rent_price
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @occupants = []
    @max_occupants = 2
  end

  def full?
    if @occupants.size > @max_occupants
      return true
    end
  end

  def add_roomate(first_name, last_name)
    @occupants << Occupant.new(@first_name=first_name , @last_name = last_name)
  end

  def remove_roomate
    @occupants.pop
  end
end
