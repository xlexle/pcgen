require 'test_helper'

class PowerSupplyTest < ActiveSupport::TestCase
  test "should be valid" do
    assert power_supplies(:one).valid?
    refute PowerSupply.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', power_supplies(:one).some_method
  # end
end
