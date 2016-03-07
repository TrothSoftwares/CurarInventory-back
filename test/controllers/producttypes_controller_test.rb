require 'test_helper'

class ProducttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producttype = producttypes(:one)
  end

  test "should get index" do
    get producttypes_url
    assert_response :success
  end

  test "should create producttype" do
    assert_difference('Producttype.count') do
      post producttypes_url, params: { producttype: {  } }
    end

    assert_response 201
  end

  test "should show producttype" do
    get producttype_url(@producttype)
    assert_response :success
  end

  test "should update producttype" do
    patch producttype_url(@producttype), params: { producttype: {  } }
    assert_response 200
  end

  test "should destroy producttype" do
    assert_difference('Producttype.count', -1) do
      delete producttype_url(@producttype)
    end

    assert_response 204
  end
end
