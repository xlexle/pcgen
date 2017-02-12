require 'test_helper'

class FansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fan = fans(:one)
  end

  test "should get index" do
    get fans_url, as: :json
    assert_response :success
  end

  test "should create fan" do
    assert_difference('Fan.count') do
      post fans_url, params: { fan: {
        # attribute_name1: @fan.attribute_name1,
        # attribute_name2: @fan.attribute_name2
      } }, as: :json
    end

    assert_response 201
  end

  test "should show fan" do
    get fan_url(@fan), as: :json
    assert_response :success
  end

  test "should update fan" do
    patch fan_url(@fan), params: { fan: {
      # attribute_name1: @fan.attribute_name1,
      # attribute_name2: @fan.attribute_name2
    } }, as: :json
    assert_response 200
  end

  test "should destroy fan" do
    assert_difference('Fan.count', -1) do
      delete fan_url(@fan), as: :json
    end

    assert_response 204
  end
end
