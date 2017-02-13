require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class SourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source = sources(:one)
  end

  test "should get index" do
    get sources_url, as: :json
    assert_response :success
  end

  test "should show source" do
    get source_url(@source), as: :json
    assert_response :success
  end

  test "should create source" do
    assert_difference('Source.count') do
      post sources_url, params: { source: {
        price_eur: @source.price_eur,
        product_type: @source.product_type,
        product_id: @source.product_id,
        shop_id: @source.shop_id
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create source with invalid parameters" do
    assert_no_difference('Source.count') do
      post sources_url, params: { source: {
        price_eur: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update source" do
    new_price_eur = 4.90
    new_product_id = fans(:one).id
    new_product_type = "Fan"
    new_shop_id = shops(:two).id

    patch source_url(@source), params: { source: {
      price_eur: new_price_eur,
      product_id: new_product_id,
      product_type: new_product_type,
      shop_id: new_shop_id
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @source.reload
    assert_equal new_price_eur, @source.price_eur
    assert_equal new_product_id, @source.product_id
    assert_equal new_shop_id, @source.shop_id
  end

  test "should not update source with invalid parameters" do
    patch source_url(@source), params: { source: {
      price_eur: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy source" do
    assert_difference('Source.count', -1) do
      delete source_url(@source), as: :json
    end

    assert_response 204
  end
end
