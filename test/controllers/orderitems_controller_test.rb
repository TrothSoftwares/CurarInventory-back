require 'test_helper'

class OrderitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderitem = orderitems(:one)
  end

  test "should get index" do
    get orderitems_url
    assert_response :success
  end

  test "should create orderitem" do
    assert_difference('Orderitem.count') do
      post orderitems_url, params: { orderitem: {  } }
    end

    assert_response 201
  end

  test "should show orderitem" do
    get orderitem_url(@orderitem)
    assert_response :success
  end

  test "should update orderitem" do
    patch orderitem_url(@orderitem), params: { orderitem: {  } }
    assert_response 200
  end

  test "should destroy orderitem" do
    assert_difference('Orderitem.count', -1) do
      delete orderitem_url(@orderitem)
    end

    assert_response 204
  end
end
