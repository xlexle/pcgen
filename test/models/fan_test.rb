require 'test_helper'

class FanTest < ActiveSupport::TestCase
  test "should be valid" do
    assert fans(:one).valid?
    refute Fan.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', fans(:one).some_method
  # end
end
