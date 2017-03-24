module Adder

  def full?(current, max)
    current.size > max
  end

  def add(capacity, thing, item) #probably could have better aruments but idk
    if thing < capacity
      thing << item #???
    end
  end

  def remove

  end

  ## use add_roomate as a template for your add method
  # def add_roomate(first_name, last_name)
  #   if @occupants.size < @max_occupants
  #     @occupants << Occupant.new(@first_name=first_name , @last_name = last_name)
  #   end
  # end


end
