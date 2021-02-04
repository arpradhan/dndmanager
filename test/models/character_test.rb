require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without a name" do
    character = Character.new
    assert_not character.save
  end
end
