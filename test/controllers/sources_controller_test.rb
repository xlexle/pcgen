require 'test_helper'

class SourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source = sources(:one)
  end

  test "should get index" do
    get sources_url, as: :json
    assert_response :success
  end

  test "should create source" do
    assert_difference('Source.count') do
      post sources_url, params: { source: {
        # attribute_name1: @source.attribute_name1,
        # attribute_name2: @source.attribute_name2
      } }, as: :json
    end

    assert_response 201
  end

  test "should show source" do
    get source_url(@source), as: :json
    assert_response :success
  end

  test "should update source" do
    patch source_url(@source), params: { source: {
      # attribute_name1: @source.attribute_name1,
      # attribute_name2: @source.attribute_name2
    } }, as: :json
    assert_response 200
  end

  test "should destroy source" do
    assert_difference('Source.count', -1) do
      delete source_url(@source), as: :json
    end

    assert_response 204
  end
end
