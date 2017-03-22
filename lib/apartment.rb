

class Apartment < Dwelling
  include Occupant
  #ask about modules vs inheritance 

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

  def add_roomate
    @occupants << Occupant.new(@first_name, @last_name)
  end

  def remove_roomate
    @occupants.pop
  end
end
