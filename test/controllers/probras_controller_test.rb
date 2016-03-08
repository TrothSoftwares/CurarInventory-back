require 'test_helper'

class ProbrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @probra = probras(:one)
  end

  test "should get index" do
    get probras_url
    assert_response :success
  end

  test "should create probra" do
    assert_difference('Probra.count') do
      post probras_url, params: { probra: {  } }
    end

    assert_response 201
  end

  test "should show probra" do
    get probra_url(@probra)
    assert_response :success
  end

  test "should update probra" do
    patch probra_url(@probra), params: { probra: {  } }
    assert_response 200
  end

  test "should destroy probra" do
    assert_difference('Probra.count', -1) do
      delete probra_url(@probra)
    end

    assert_response 204
  end
end
