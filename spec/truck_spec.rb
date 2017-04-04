require_relative "spec_helper"

describe Truck do
  let(:truck) {Truck.new}
  let(:fake_occupant) {Occupant.new("Random","Stranger")}
  let(:box) {Box.new(fake_occupant)}

  describe "#initialize" do
    it "creates a truck object with a capacity of 25 " do
      expect(truck.max_capacity).to eq(25)
      expect(truck.current_number).to eq([])
    end
  end

  describe "#full" do
    it "returns false if truck is not full" do
      truck.add_thing(truck, truck.max_capacity, box)
      expect(truck.full?(truck.current_number, truck.max_capacity)).to eq(false)
    end
    it "returns full if truck is full" do
      25.times do
        truck.add_thing(truck, truck.max_capacity, box)
      end
      expect(truck.full?(truck.current_number, truck.max_capacity)).to eq(true)
    end
  end
end
