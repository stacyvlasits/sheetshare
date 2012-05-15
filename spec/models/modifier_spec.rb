require "spec_helper"

describe Modifier do
  let(:empty_mod) {FactoryGirl.build(:modifier, :kind => nil, :amount => nil)}
  let(:string_mod) {FactoryGirl.build(:modifier, :kind => 'hp', :amount => 'string')}
  let(:my_mod) {FactoryGirl.create(:modifier)}

  it "requires a name" do
    empty_mod.should have(1).error_on(:kind)
  end

  it "requires an amount, which should be a number" do
    empty_mod.should have(2).error_on(:amount)
  end

  it "requires a number in amount" do
    string_mod.should have(1).error_on(:amount)
  end

end