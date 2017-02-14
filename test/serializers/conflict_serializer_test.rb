require 'test_helper'

class ConflictSerializerTest < ActiveSupport::TestCase
  test "should serialize attributes" do
    serializer = ConflictSerializer.new(conflicts(:one))

    fields = [:id, :reason, :strict]
    assert_equal fields, serializer.attributes.keys
  end
end
