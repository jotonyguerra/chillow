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
