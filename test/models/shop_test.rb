require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  test "should be valid" do
    assert shops(:one).valid?
    refute Shop.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', shops(:one).some_method
  # end
end
