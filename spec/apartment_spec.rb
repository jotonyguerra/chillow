require_relative 'spec_helper'
describe Apartment do
  let(:fake_apartment) {Apartment.new("1200")}


  it "contains a rent price" do
    expect(fake_apartment.rent_price).to eq("1200")
  end


  it "adds an occupant to the apartment" do
    expect(fake_apartment.add_roomate("Tyrion", "Lannister")).to be_a(Object)
    expect(fake_apartment.occupants[0].first_name).to eq("Tyrion")
  end

  describe '#full?' do
    it "returns false if apartment is not full" do
      fake_apartment.add_roomate("Tyrion", "Lannister")
      expect(fake_apartment.full?(fake_apartment.occupants, fake_apartment.max_occupants)).to eq(false)
      expect(fake_apartment.max_occupants).to eq(2)
    end
  end

    # it "returns true if apartment is not full" do
    #
    # end

end
