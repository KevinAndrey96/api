require 'test_helper'

class ViviendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vivienda = viviendas(:one)
  end

  test "should get index" do
    get viviendas_url, as: :json
    assert_response :success
  end

  test "should create vivienda" do
    assert_difference('Vivienda.count') do
      post viviendas_url, params: { vivienda: { barrio: @vivienda.barrio, habitantes: @vivienda.habitantes, tipo: @vivienda.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show vivienda" do
    get vivienda_url(@vivienda), as: :json
    assert_response :success
  end

  test "should update vivienda" do
    patch vivienda_url(@vivienda), params: { vivienda: { barrio: @vivienda.barrio, habitantes: @vivienda.habitantes, tipo: @vivienda.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy vivienda" do
    assert_difference('Vivienda.count', -1) do
      delete vivienda_url(@vivienda), as: :json
    end

    assert_response 204
  end
end
