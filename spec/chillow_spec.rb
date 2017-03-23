require "spec_helper"

describe Dwelling do
  let(:fake_dwelling) {Dwelling.new("777 Las Vegas blvd", "Las Vegas", "NV", "89146")}

  it "creates a dwelling object" do
    expect(fake_dwelling).to be_a(Object)
  end

  it "contains a street address" do
    expect(fake_dwelling.street).to be_a(String)
  end
  it "contains a City or Town" do
    expect(fake_dwelling.city).to be_a(String)
  end
  it "contains a state" do
    expect(fake_dwelling.state).to be_a(String)
  end
  it "contains a zipcode" do
    expect(fake_dwelling.zip).to be_a(String)
  end
end

describe Apartment do
  let(:fake_apartment) {Apartment.new("1200")}

  it "contains a rent price" do
    expect(fake_apartment.rent_price).to eq("1200")
  end


  it "adds an occupant to the apartment" do
    expect(fake_apartment.add_roomate("Tyrion", "Lannister")).to be_a(Object)
    expect(fake_apartment.occupants[0].first_name).to eq("Tyrion")
  end

end
