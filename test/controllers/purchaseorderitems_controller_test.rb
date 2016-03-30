require 'test_helper'

class PurchaseorderitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchaseorderitem = purchaseorderitems(:one)
  end

  test "should get index" do
    get purchaseorderitems_url
    assert_response :success
  end

  test "should create purchaseorderitem" do
    assert_difference('Purchaseorderitem.count') do
      post purchaseorderitems_url, params: { purchaseorderitem: {  } }
    end

    assert_response 201
  end

  test "should show purchaseorderitem" do
    get purchaseorderitem_url(@purchaseorderitem)
    assert_response :success
  end

  test "should update purchaseorderitem" do
    patch purchaseorderitem_url(@purchaseorderitem), params: { purchaseorderitem: {  } }
    assert_response 200
  end

  test "should destroy purchaseorderitem" do
    assert_difference('Purchaseorderitem.count', -1) do
      delete purchaseorderitem_url(@purchaseorderitem)
    end

    assert_response 204
  end
end
