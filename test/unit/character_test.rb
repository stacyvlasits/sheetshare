require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  test "should not save character without name" do
    character = Character.new
    assert !character.save, "Saved a character without a name." 
  end
end
