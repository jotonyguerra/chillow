require_relative "dwelling"
# require relative "occupant"

class House < Dwelling #why is it green?
  attr_accessor :asking_price

  def initialize(asking_price)
    @asking_price = asking_price
  end
end
