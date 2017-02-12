require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class ConflictsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conflict = conflicts(:one)
  end

  test "should get index" do
    get conflicts_url, as: :json
    assert_response :success
  end

  test "should show conflict" do
    get conflict_url(@conflict), as: :json
    assert_response :success
  end

  test "should create conflict" do
    assert_difference('Conflict.count') do
      post conflicts_url, params: { conflict: {
        reason: @conflict.reason,
        strict: @conflict.strict
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create conflict with invalid parameters" do
    assert_no_difference('Conflict.count') do
      post conflicts_url, params: { conflict: {
        reason: nil,
        strict: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update conflict" do

    patch conflict_url(@conflict), params: { conflict: {
      reason: @conflict.reason,
      strict: @conflict.strict
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    # @conflict.reload
    # assert_equal 'new attribute_name1', @conflict.body
    # assert_equal 'new attribute_name2', @conflict.author
    # assert_equal 1, @conflict.referred_model_id
  end

  test "should not update conflict with invalid parameters" do
    patch conflict_url(@conflict), params: { conflict: {
      reason: nil,
      strict: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy conflict" do
    assert_difference('Conflict.count', -1) do
      delete conflict_url(@conflict), as: :json
    end

    assert_response 204
  end
end
