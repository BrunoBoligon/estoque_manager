require 'test_helper'

class OperacosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operaco = operacos(:one)
  end

  test "should get index" do
    get operacos_url
    assert_response :success
  end

  test "should get new" do
    get new_operaco_url
    assert_response :success
  end

  test "should create operaco" do
    assert_difference('Operaco.count') do
      post operacos_url, params: { operaco: { nome: @operaco.nome, tipo: @operaco.tipo } }
    end

    assert_redirected_to operaco_url(Operaco.last)
  end

  test "should show operaco" do
    get operaco_url(@operaco)
    assert_response :success
  end

  test "should get edit" do
    get edit_operaco_url(@operaco)
    assert_response :success
  end

  test "should update operaco" do
    patch operaco_url(@operaco), params: { operaco: { nome: @operaco.nome, tipo: @operaco.tipo } }
    assert_redirected_to operaco_url(@operaco)
  end

  test "should destroy operaco" do
    assert_difference('Operaco.count', -1) do
      delete operaco_url(@operaco)
    end

    assert_redirected_to operacos_url
  end
end
