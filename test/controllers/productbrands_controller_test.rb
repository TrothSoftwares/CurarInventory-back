require 'test_helper'

class ProductbrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productbrand = productbrands(:one)
  end

  test "should get index" do
    get productbrands_url
    assert_response :success
  end

  test "should create productbrand" do
    assert_difference('Productbrand.count') do
      post productbrands_url, params: { productbrand: {  } }
    end

    assert_response 201
  end

  test "should show productbrand" do
    get productbrand_url(@productbrand)
    assert_response :success
  end

  test "should update productbrand" do
    patch productbrand_url(@productbrand), params: { productbrand: {  } }
    assert_response 200
  end

  test "should destroy productbrand" do
    assert_difference('Productbrand.count', -1) do
      delete productbrand_url(@productbrand)
    end

    assert_response 204
  end
end
