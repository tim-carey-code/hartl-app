require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationship = Relationship.new(follower_id: users(:michael).id,
      followed_id: users(:timothy).id)
  end
  test "should be valid" do
    assert @relationship.valid?
  end
  test "should requier a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end
  test "should requier a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
end
