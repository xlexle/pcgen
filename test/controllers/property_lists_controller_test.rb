require 'test_helper'

class PropertyListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_list = property_lists(:one)
  end

  test "should get index" do
    get property_lists_url, as: :json
    assert_response :success
  end

  test "should create property_list" do
    assert_difference('PropertyList.count') do
      post property_lists_url, params: { property_list: {
        # attribute_name1: @property_list.attribute_name1,
        # attribute_name2: @property_list.attribute_name2
      } }, as: :json
    end

    assert_response 201
  end

  test "should show property_list" do
    get property_list_url(@property_list), as: :json
    assert_response :success
  end

  test "should update property_list" do
    patch property_list_url(@property_list), params: { property_list: {
      # attribute_name1: @property_list.attribute_name1,
      # attribute_name2: @property_list.attribute_name2
    } }, as: :json
    assert_response 200
  end

  test "should destroy property_list" do
    assert_difference('PropertyList.count', -1) do
      delete property_list_url(@property_list), as: :json
    end

    assert_response 204
  end
end
