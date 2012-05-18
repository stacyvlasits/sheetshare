require 'spec_helper'

describe "levels/show" do
  before(:each) do
    @level = assign(:level, stub_model(Level,
      :class => "Class"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class/)
  end
end
