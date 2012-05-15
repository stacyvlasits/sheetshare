require "spec_helper"

describe Gear do
  let(:empty_gear) {FactoryGirl.build(:gear, :name => nil, :slot => nil)}
  let(:my_gear){FactoryGirl.create(:gear)}

  it "requires a name" do
    empty_gear.should have(1).error_on(:name)    
  end

  it "requires a slot" do
    empty_gear.should have(1).error_on(:slot)
  end
  
end
