require 'test_helper'

class CommontoolissuancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commontoolissuance = commontoolissuances(:one)
  end

  test "should get index" do
    get commontoolissuances_url
    assert_response :success
  end

  test "should create commontoolissuance" do
    assert_difference('Commontoolissuance.count') do
      post commontoolissuances_url, params: { commontoolissuance: { status: @commontoolissuance.status } }
    end

    assert_response 201
  end

  test "should show commontoolissuance" do
    get commontoolissuance_url(@commontoolissuance)
    assert_response :success
  end

  test "should update commontoolissuance" do
    patch commontoolissuance_url(@commontoolissuance), params: { commontoolissuance: { status: @commontoolissuance.status } }
    assert_response 200
  end

  test "should destroy commontoolissuance" do
    assert_difference('Commontoolissuance.count', -1) do
      delete commontoolissuance_url(@commontoolissuance)
    end

    assert_response 204
  end
end
