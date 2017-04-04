require_relative 'spec_helper'
require 'pry'
describe Apartment do
  let(:fake_apartment) {Apartment.new("1200", 2)}
  let(:fake_occupant) {Occupant.new("Random","Stranger")}
  let(:second_roommate) {Occupant.new("Tyrell", "Lannister")}


  it "contains a rent price" do
    expect(fake_apartment.rent_price).to eq("1200")
  end


  it "adds an occupant to the apartment" do
    expect(fake_apartment.add_thing(fake_apartment, fake_apartment.max_capacity, second_roommate)).to be_a(Object)
    expect(fake_apartment.current_number[0].first_name).to eq("Tyrell")
  end

  describe '#full?' do
    it "returns false if apartment is not full" do
      expect(fake_apartment.full?(fake_apartment.current_number, fake_apartment.max_capacity)).to eq(false)
      expect(fake_apartment.max_capacity).to eq(2)
    end
    it "returns true if apartment is full" do
      fake_apartment.add_thing(fake_apartment, fake_apartment.max_capacity, fake_occupant)
      fake_apartment.add_thing(fake_apartment, fake_apartment.max_capacity, second_roommate)
      expect(fake_apartment.full?(fake_apartment.current_number, fake_apartment.max_capacity)).to eq(true)
    end
  end



end
