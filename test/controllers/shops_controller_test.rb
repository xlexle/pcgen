require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get shops_url, as: :json
    assert_response :success
  end

  test "should show shop" do
    get shop_url(@shop), as: :json
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post shops_url, params: { shop: {
        name: @shop.name,
        url: @shop.url
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create shop with invalid parameters" do
    assert_no_difference('Shop.count') do
      post shops_url, params: { shop: {
        name: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update shop" do
    new_name = "Kallen marketti"
    new_url = "http://facebook.com/kallenmarketti"

    patch shop_url(@shop), params: { shop: {
      name: new_name,
      url: new_url
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @shop.reload
    assert_equal new_name, @shop.name
    assert_equal new_url, @shop.url
  end

  test "should not update shop with invalid parameters" do
    patch shop_url(@shop), params: { shop: {
      name: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete shop_url(@shop), as: :json
    end

    assert_response 204
  end
end
