require 'test_helper'

# http://www.restapitutorial.com/httpstatuscodes.html
# Success codes
# 200 = OK, 201 = Created, 204 = No Content
# ---
# Client error codes
# 422 = Unprocessable Entity,

class FansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fan = fans(:one)
  end

  test "should get index" do
    get fans_url, as: :json
    assert_response :success
  end

  test "should show fan" do
    get fan_url(@fan), as: :json
    assert_response :success
  end

  test "should create fan" do
    assert_difference('Fan.count') do
      post fans_url, params: { fan: {
        max_rpm: @fan.max_rpm,
        thickness_mm: @fan.thickness_mm,
        has_pwm: @fan.has_pwm
      } }, as: :json
    end

    assert_response 201
  end

  test "should not create fan with invalid parameters" do
    assert_no_difference('Fan.count') do
      post fans_url, params: { fan: {
        max_rpm: nil
      } }, as: :json
    end

    assert_response 422
  end

  test "should update fan" do
    new_max_rpm = 1800
    new_thickness_mm = 15
    new_has_pwm = !(@fan.has_pwm)

    patch fan_url(@fan), params: { fan: {
      max_rpm: new_max_rpm,
      thickness_mm: new_thickness_mm,
      has_pwm: new_has_pwm
    } }, as: :json

    assert_response 200

    # Test that the values are actually updated:
    @fan.reload
    assert_equal new_max_rpm, @fan.max_rpm
    assert_equal new_thickness_mm, @fan.thickness_mm
    assert_equal new_has_pwm, @fan.has_pwm
  end

  test "should not update fan with invalid parameters" do
    patch fan_url(@fan), params: { fan: {
      max_rpm: nil
    } }, as: :json

    assert_response 422
  end

  test "should destroy fan" do
    assert_difference('Fan.count', -1) do
      delete fan_url(@fan), as: :json
    end

    assert_response 204
  end
end
