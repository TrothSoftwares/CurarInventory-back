require 'test_helper'

class StockadjustmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockadjustment = stockadjustments(:one)
  end

  test "should get index" do
    get stockadjustments_url
    assert_response :success
  end

  test "should create stockadjustment" do
    assert_difference('Stockadjustment.count') do
      post stockadjustments_url, params: { stockadjustment: {  } }
    end

    assert_response 201
  end

  test "should show stockadjustment" do
    get stockadjustment_url(@stockadjustment)
    assert_response :success
  end

  test "should update stockadjustment" do
    patch stockadjustment_url(@stockadjustment), params: { stockadjustment: {  } }
    assert_response 200
  end

  test "should destroy stockadjustment" do
    assert_difference('Stockadjustment.count', -1) do
      delete stockadjustment_url(@stockadjustment)
    end

    assert_response 204
  end
end
