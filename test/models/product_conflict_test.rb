require 'test_helper'

class ProductConflictTest < ActiveSupport::TestCase
  test "should be valid" do
    assert product_conflicts(:one).valid?
    refute ProductConflict.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', product_conflicts(:one).some_method
  # end
end
