require 'test_helper'

class PropertyListTest < ActiveSupport::TestCase
  test "should be valid" do
    assert property_lists(:one).valid?
    refute PropertyList.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', property_lists(:one).some_method
  # end
end
