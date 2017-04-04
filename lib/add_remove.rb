module Adder

  # def full?
  #   @occupants.size >= @max_occupants
  # end
  #
  # def add(*roomate)
  #   @roomate = Occupant.new(roomate[0], roomate[1])
  #   if @occupants.size <= @max_occupants
  #     @occupants << @roomate
  #   else
  #     puts "Dwelling is at capacity"
  #   end
  # end

  # def remove_roomate
  #   @occupants.pop
  # end
  #
  # def remove_box
  #   @box_array.pop
  # end

  def full?(thing, capacity)
    # binding.pry
      thing.count >= capacity
  end

  def add_thing(thing, capacity, item)
    if thing.current_number.count < capacity
      thing.current_number << item
    end
      thing
  end

  def remove_thing(thing)
    if thing.count > 0
      thing.pop
    end
    thing
  end


end
