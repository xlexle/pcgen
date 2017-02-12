require 'test_helper'

class ProductConflictsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_conflict = product_conflicts(:one)
  end

  test "should get index" do
    get product_conflicts_url, as: :json
    assert_response :success
  end

  test "should create product_conflict" do
    assert_difference('ProductConflict.count') do
      post product_conflicts_url, params: { product_conflict: {
        # attribute_name1: @product_conflict.attribute_name1,
        # attribute_name2: @product_conflict.attribute_name2
      } }, as: :json
    end

    assert_response 201
  end

  test "should show product_conflict" do
    get product_conflict_url(@product_conflict), as: :json
    assert_response :success
  end

  test "should update product_conflict" do
    patch product_conflict_url(@product_conflict), params: { product_conflict: {
      # attribute_name1: @product_conflict.attribute_name1,
      # attribute_name2: @product_conflict.attribute_name2
    } }, as: :json
    assert_response 200
  end

  test "should destroy product_conflict" do
    assert_difference('ProductConflict.count', -1) do
      delete product_conflict_url(@product_conflict), as: :json
    end

    assert_response 204
  end
end
