require 'test_helper'

class StockadjustmentitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockadjustmentitem = stockadjustmentitems(:one)
  end

  test "should get index" do
    get stockadjustmentitems_url
    assert_response :success
  end

  test "should create stockadjustmentitem" do
    assert_difference('Stockadjustmentitem.count') do
      post stockadjustmentitems_url, params: { stockadjustmentitem: {  } }
    end

    assert_response 201
  end

  test "should show stockadjustmentitem" do
    get stockadjustmentitem_url(@stockadjustmentitem)
    assert_response :success
  end

  test "should update stockadjustmentitem" do
    patch stockadjustmentitem_url(@stockadjustmentitem), params: { stockadjustmentitem: {  } }
    assert_response 200
  end

  test "should destroy stockadjustmentitem" do
    assert_difference('Stockadjustmentitem.count', -1) do
      delete stockadjustmentitem_url(@stockadjustmentitem)
    end

    assert_response 204
  end
end
