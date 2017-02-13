require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class ServiceItemControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_item = service_items(:one)
  end

  test "should get index" do
    get service_items_url, as: :json
    assert_response :success
  end

  test "should show service_item" do
    get service_item_url(@service_item), as: :json
    assert_response :success
  end

  test "should create service_item" do
    assert_difference('ServiceItem.count') do
      post service_items_url, params: { service_item: {
        service_name: @service_item.service_name,
        price_eur: @service_item.price_eur,
        shop_id: @service_item.shop_id
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create service_item with invalid parameters" do
    assert_no_difference('ServiceItem.count') do
      post service_items_url, params: { service_item: {
        service_name: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update service_item" do
    new_service_name = "Kierrätys"
    new_price_eur = 0.99
    new_shop_id = shops(:two).id

    patch service_item_url(@service_item), params: { service_item: {
      service_name: new_service_name,
      price_eur: new_price_eur,
      shop_id: new_shop_id
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @service_item.reload
    assert_equal new_service_name, @service_item.service_name
    assert_equal new_price_eur, @service_item.price_eur
    assert_equal new_shop_id, @service_item.shop_id
  end

  test "should not update service_item with invalid parameters" do
    patch service_item_url(@service_item), params: { service_item: {
      service_name: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy service_item" do
    assert_difference('ServiceItem.count', -1) do
      delete service_item_url(@service_item), as: :json
    end

    assert_response 204
  end
end
