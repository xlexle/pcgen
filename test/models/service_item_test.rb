require 'test_helper'

class ServiceItemTest < ActiveSupport::TestCase
  test "should be valid" do
    assert service_items(:one).valid?
    refute ServiceItem.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', service_items(:one).some_method
  # end
end
