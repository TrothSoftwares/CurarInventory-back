require 'test_helper'

class PurchaseordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchaseorder = purchaseorders(:one)
  end

  test "should get index" do
    get purchaseorders_url
    assert_response :success
  end

  test "should create purchaseorder" do
    assert_difference('Purchaseorder.count') do
      post purchaseorders_url, params: { purchaseorder: {  } }
    end

    assert_response 201
  end

  test "should show purchaseorder" do
    get purchaseorder_url(@purchaseorder)
    assert_response :success
  end

  test "should update purchaseorder" do
    patch purchaseorder_url(@purchaseorder), params: { purchaseorder: {  } }
    assert_response 200
  end

  test "should destroy purchaseorder" do
    assert_difference('Purchaseorder.count', -1) do
      delete purchaseorder_url(@purchaseorder)
    end

    assert_response 204
  end
end
