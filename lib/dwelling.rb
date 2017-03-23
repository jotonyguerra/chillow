require_relative "occupant"

class Dwelling
  # include Occupant
  attr_reader :street, :city, :state, :zip

  def initialize(street, city, state, zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end
