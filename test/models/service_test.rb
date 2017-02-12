require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  test "should be valid" do
    assert services(:one).valid?
    refute Service.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', services(:one).some_method
  # end
end
