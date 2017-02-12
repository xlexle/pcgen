require 'test_helper'

class PowerSuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_supply = power_supplies(:one)
  end

  test "should get index" do
    get power_supplies_url, as: :json
    assert_response :success
  end

  test "should create power_supply" do
    assert_difference('PowerSupply.count') do
      post power_supplies_url, params: { power_supply: {
        # attribute_name1: @power_supply.attribute_name1,
        # attribute_name2: @power_supply.attribute_name2
      } }, as: :json
    end

    assert_response 201
  end

  test "should show power_supply" do
    get power_supply_url(@power_supply), as: :json
    assert_response :success
  end

  test "should update power_supply" do
    patch power_supply_url(@power_supply), params: { power_supply: {
      # attribute_name1: @power_supply.attribute_name1,
      # attribute_name2: @power_supply.attribute_name2
    } }, as: :json
    assert_response 200
  end

  test "should destroy power_supply" do
    assert_difference('PowerSupply.count', -1) do
      delete power_supply_url(@power_supply), as: :json
    end

    assert_response 204
  end
end
