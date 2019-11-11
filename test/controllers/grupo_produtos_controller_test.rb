require 'test_helper'

class GrupoProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_produto = grupo_produtos(:one)
  end

  test "should get index" do
    get grupo_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_produto_url
    assert_response :success
  end

  test "should create grupo_produto" do
    assert_difference('GrupoProduto.count') do
      post grupo_produtos_url, params: { grupo_produto: { nome: @grupo_produto.nome } }
    end

    assert_redirected_to grupo_produto_url(GrupoProduto.last)
  end

  test "should show grupo_produto" do
    get grupo_produto_url(@grupo_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_produto_url(@grupo_produto)
    assert_response :success
  end

  test "should update grupo_produto" do
    patch grupo_produto_url(@grupo_produto), params: { grupo_produto: { nome: @grupo_produto.nome } }
    assert_redirected_to grupo_produto_url(@grupo_produto)
  end

  test "should destroy grupo_produto" do
    assert_difference('GrupoProduto.count', -1) do
      delete grupo_produto_url(@grupo_produto)
    end

    assert_redirected_to grupo_produtos_url
  end
end
