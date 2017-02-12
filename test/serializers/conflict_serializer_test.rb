class ConflictsSerializerTest < ActiveSupport::TestCase
  test "should serialize correct fields"
    serializer = Api::ConflictsSerializer.new(conflicts(:one))

    fields = [:id, :reason, :strict]
    assert_equal fields, serializer.attributes.keys
  end
end
