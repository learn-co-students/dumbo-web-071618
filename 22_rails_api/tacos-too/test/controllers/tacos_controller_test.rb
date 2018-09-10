require 'test_helper'

class TacosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taco = tacos(:one)
  end

  test "should get index" do
    get tacos_url, as: :json
    assert_response :success
  end

  test "should create taco" do
    assert_difference('Taco.count') do
      post tacos_url, params: { taco: { name: @taco.name, spiciness: @taco.spiciness } }, as: :json
    end

    assert_response 201
  end

  test "should show taco" do
    get taco_url(@taco), as: :json
    assert_response :success
  end

  test "should update taco" do
    patch taco_url(@taco), params: { taco: { name: @taco.name, spiciness: @taco.spiciness } }, as: :json
    assert_response 200
  end

  test "should destroy taco" do
    assert_difference('Taco.count', -1) do
      delete taco_url(@taco), as: :json
    end

    assert_response 204
  end
end
