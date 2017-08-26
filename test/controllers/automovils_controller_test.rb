require 'test_helper'

class AutomovilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automovil = automovils(:one)
  end

  test "should get index" do
    get automovils_url, as: :json
    assert_response :success
  end

  test "should create automovil" do
    assert_difference('Automovil.count') do
      post automovils_url, params: { automovil: { color: @automovil.color, marca: @automovil.marca, modelo: @automovil.modelo } }, as: :json
    end

    assert_response 201
  end

  test "should show automovil" do
    get automovil_url(@automovil), as: :json
    assert_response :success
  end

  test "should update automovil" do
    patch automovil_url(@automovil), params: { automovil: { color: @automovil.color, marca: @automovil.marca, modelo: @automovil.modelo } }, as: :json
    assert_response 200
  end

  test "should destroy automovil" do
    assert_difference('Automovil.count', -1) do
      delete automovil_url(@automovil), as: :json
    end

    assert_response 204
  end
end
