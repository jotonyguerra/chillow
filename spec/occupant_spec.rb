require 'spec_helper'

describe Occupant do
  let(:fake_occupant1) {Occupant.new("Tony", "Guerra")}

  it "creates an object" do
    expect(fake_occupant1).to be_a(Object)
  end
  it "contains the first and last name of the occupant" do
    expect(fake_occupant1.first_name).to eq("Tony")
    expect(fake_occupant1.last_name).to eq("Guerra")
  end
end
