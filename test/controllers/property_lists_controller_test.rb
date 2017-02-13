require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class PropertyListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_list = property_lists(:one)
  end

  test "should get index" do
    get property_lists_url, as: :json
    assert_response :success
  end

  test "should show property_list" do
    get property_list_url(@property_list), as: :json
    assert_response :success
  end

  test "should create property_list" do
    assert_difference('PropertyList.count') do
      post property_lists_url, params: { property_list: {
        listed: @property_list.listed,
        quality: @property_list.quality,
        product_name: @property_list.product_name,
        sku: @property_list.sku,
        brand: @property_list.brand,
        product_id: @property_list.product_id,
        product_type: @property_list.product_type
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create property_list with invalid parameters" do
    assert_no_difference('PropertyList.count') do
      post property_lists_url, params: { property_list: {
        quality: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update property_list" do
    new_listed = !(@property_list.listed)
    new_quality = 1
    new_product_name = "New name"
    new_sku = "1234567890"
    new_brand = "Russell"
    new_product_id = fans(:one).id
    new_product_type = "Fan"

    patch property_list_url(@property_list), params: { property_list: {
      listed: new_listed,
      quality: new_quality,
      product_name: new_product_name,
      sku: new_sku,
      brand: new_brand,
      product_id: new_product_id,
      product_type: new_product_type
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @property_list.reload
    assert_equal new_listed, @property_list.listed
    assert_equal new_quality, @property_list.quality
    assert_equal new_product_name, @property_list.product_name
    assert_equal new_sku, @property_list.sku
    assert_equal new_brand, @property_list.brand
    assert_equal new_product_id, @property_list.product_id
    assert_equal new_product_type, @property_list.product_type
  end

  test "should not update property_list with invalid parameters" do
    patch property_list_url(@property_list), params: { property_list: {
      quality: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy property_list" do
    assert_difference('PropertyList.count', -1) do
      delete property_list_url(@property_list), as: :json
    end

    assert_response 204
  end
end
