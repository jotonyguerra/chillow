class Occupant

  attr_accessor :first_name, :last_name, :name

  def initialize(*args)
    # @name = []
    # @name << args
    @first_name = args[0]
    @last_name = args[1]
  end
end
