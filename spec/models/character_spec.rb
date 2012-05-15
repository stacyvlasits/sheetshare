require "spec_helper"

describe Character do
  let(:empty_char) { FactoryGirl.build(:character, :name => nil, :int => nil, :wis => nil, :chr => nil, :str => nil, :dex => nil, :con => nil)} 
  let(:string_char) { FactoryGirl.build(:character, :name => "Tom", :int => "10", :wis => "10", :chr => "10", :str => "10", :dex => "10", :con => "10")}
  let(:well_formed_char) { FactoryGirl.create(:character)}
  
  it "requires a name" do
    empty_char.should have(1).error_on(:name)
  end

  it "requires a value, which should be a number in the stats fields" do
    string_char.should have(2).error_on(:int)
  end
end
