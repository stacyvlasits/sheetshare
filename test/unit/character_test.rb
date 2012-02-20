require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  test "should not save character without name" do
    character = Character.new
    assert !character.save, "Saved a character without a name." 
  end
  test "assigning a string to the int field should error out" do
    character = Character.new(:name => 'Tim',:int => 'string')
    assert !character.valid?, "Permitted a string assigned to the int field"
  end
end
