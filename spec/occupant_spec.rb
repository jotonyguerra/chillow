require 'spec_helper'

describe Occupant do
  let(:fake_occupant) {Occupant.new("Tony", "Guerra")}

  it "creates an object" do
    expect(fake_occupant).to be_a(Object)
  end
  it "contains the first and last name of the occupant" do
    expect(fake_occupant.first_name).to eq("Tony")
    expect(fake_occupant.last_name).to eq("Guerra")
  end
end
