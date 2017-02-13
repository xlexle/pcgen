require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class PowerSuppliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_supply = power_supplies(:one)
  end

  test "should get index" do
    get power_supplies_url, as: :json
    assert_response :success
  end

  test "should show power_supply" do
    get power_supply_url(@power_supply), as: :json
    assert_response :success
  end

  test "should create power_supply" do
    assert_difference('PowerSupply.count') do
      post power_supplies_url, params: { power_supply: {
        form_factor: @power_supply.form_factor,
        amps12v: @power_supply.amps12v,
        full_modular: @power_supply.full_modular,
        semi_modular: @power_supply.semi_modular,
        efficiency: @power_supply.efficiency,
        oem: @power_supply.oem,
        pcie8pin_qty: @power_supply.pcie8pin_qty,
        pcie6pin_qty: @power_supply.pcie6pin_qty,
        sata_qty: @power_supply.sata_qty,
        fan_id: @power_supply.fan_id
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create power_supply with invalid parameters" do
    assert_no_difference('PowerSupply.count') do
      post power_supplies_url, params: { power_supply: {
        form_factor: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update power_supply" do
    new_form_factor = "SFX"
    new_amps12v = 101.4
    new_full_modular = !(@power_supply.full_modular)
    new_semi_modular = !(@power_supply.semi_modular)
    new_efficiency = "80+ Platinum"
    new_oem = "FSP"
    new_pcie8pin_qty = 10
    new_pcie6pin_qty = 10
    new_sata_qty = 1
    new_fan_id = fans(:one).id

    patch power_supply_url(@power_supply), params: { power_supply: {
      form_factor: new_form_factor,
      amps12v: new_amps12v,
      full_modular: new_full_modular,
      semi_modular: new_semi_modular,
      efficiency: new_efficiency,
      oem: new_oem,
      pcie8pin_qty: new_pcie8pin_qty,
      pcie6pin_qty: new_pcie6pin_qty,
      sata_qty: new_sata_qty,
      fan_id: new_fan_id
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @power_supply.reload
    assert_equal new_form_factor, @power_supply.form_factor
    assert_equal new_amps12v, @power_supply.amps12v
    assert_equal new_efficiency, @power_supply.efficiency
    assert_equal new_oem, @power_supply.oem
    assert_equal new_pcie8pin_qty, @power_supply.pcie8pin_qty
    assert_equal new_pcie6pin_qty, @power_supply.pcie6pin_qty
    assert_equal new_sata_qty, @power_supply.sata_qty
    assert_equal new_fan_id, @power_supply.fan_id
  end

  test "should not update power_supply with invalid parameters" do
    patch power_supply_url(@power_supply), params: { power_supply: {
      form_factor: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy power_supply" do
    assert_difference('PowerSupply.count', -1) do
      delete power_supply_url(@power_supply), as: :json
    end

    assert_response 204
  end
end
