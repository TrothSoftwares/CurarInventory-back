require 'test_helper'

class ToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get tools_url
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post tools_url, params: { tool: { name: @tool.name, status: @tool.status } }
    end

    assert_response 201
  end

  test "should show tool" do
    get tool_url(@tool)
    assert_response :success
  end

  test "should update tool" do
    patch tool_url(@tool), params: { tool: { name: @tool.name, status: @tool.status } }
    assert_response 200
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete tool_url(@tool)
    end

    assert_response 204
  end
end
