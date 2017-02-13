require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class ProductConflictControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_conflict = product_conflicts(:one)
  end

  test "should get index" do
    get product_conflicts_url, as: :json
    assert_response :success
  end

  test "should show product_conflict" do
    get product_conflict_url(@product_conflict), as: :json
    assert_response :success
  end

  test "should create product_conflict" do
    assert_difference('ProductConflict.count') do
      post product_conflicts_url, params: { product_conflict: {
        conflict_id: @product_conflict.conflict_id,
        product_id: @product_conflict.product_id,
        product_type: @product_conflict.product_type
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create product_conflict with invalid parameters" do
    assert_no_difference('ProductConflict.count') do
      post product_conflicts_url, params: { product_conflict: {
        conflict_id: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should destroy product_conflict" do
    assert_difference('ProductConflict.count', -1) do
      delete product_conflict_url(@product_conflict), as: :json
    end

    assert_response 204
  end
end
