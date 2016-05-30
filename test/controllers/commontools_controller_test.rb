require 'test_helper'

class CommontoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commontool = commontools(:one)
  end

  test "should get index" do
    get commontools_url
    assert_response :success
  end

  test "should create commontool" do
    assert_difference('Commontool.count') do
      post commontools_url, params: { commontool: { slno: @commontool.slno } }
    end

    assert_response 201
  end

  test "should show commontool" do
    get commontool_url(@commontool)
    assert_response :success
  end

  test "should update commontool" do
    patch commontool_url(@commontool), params: { commontool: { slno: @commontool.slno } }
    assert_response 200
  end

  test "should destroy commontool" do
    assert_difference('Commontool.count', -1) do
      delete commontool_url(@commontool)
    end

    assert_response 204
  end
end
