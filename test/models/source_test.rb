require 'test_helper'

class SourceTest < ActiveSupport::TestCase
  test "should be valid" do
    assert sources(:one).valid?
    refute Source.new.valid?
  end

  # test non-private methods here, if any
  # test "some method" do
  #   assert_equal 'something', sources(:one).some_method
  # end
end
