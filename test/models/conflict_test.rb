require 'test_helper'

class ConflictTest < ActiveSupport::TestCase
  test "should be valid" do
    assert conflicts(:one).valid?
    refute Conflict.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', conflicts(:one).some_method
  # end
end
