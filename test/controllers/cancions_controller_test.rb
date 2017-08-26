require 'test_helper'

class CancionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cancion = cancions(:one)
  end

  test "should get index" do
    get cancions_url, as: :json
    assert_response :success
  end

  test "should create cancion" do
    assert_difference('Cancion.count') do
      post cancions_url, params: { cancion: { artista: @cancion.artista, genero: @cancion.genero, nombre: @cancion.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show cancion" do
    get cancion_url(@cancion), as: :json
    assert_response :success
  end

  test "should update cancion" do
    patch cancion_url(@cancion), params: { cancion: { artista: @cancion.artista, genero: @cancion.genero, nombre: @cancion.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy cancion" do
    assert_difference('Cancion.count', -1) do
      delete cancion_url(@cancion), as: :json
    end

    assert_response 204
  end
end
