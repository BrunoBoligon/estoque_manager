require "application_system_test_case"

class MovimentacaoEstoquesTest < ApplicationSystemTestCase
  setup do
    @movimentacao_estoque = movimentacao_estoques(:one)
  end

  test "visiting the index" do
    visit movimentacao_estoques_url
    assert_selector "h1", text: "Movimentacao Estoques"
  end

  test "creating a Movimentacao estoque" do
    visit movimentacao_estoques_url
    click_on "New Movimentacao Estoque"

    fill_in "Data", with: @movimentacao_estoque.data
    fill_in "Operacao", with: @movimentacao_estoque.operacao_id
    fill_in "Pessoa", with: @movimentacao_estoque.pessoa_id
    fill_in "Produto", with: @movimentacao_estoque.produto_id
    fill_in "Quantidade", with: @movimentacao_estoque.quantidade
    click_on "Create Movimentacao estoque"

    assert_text "Movimentacao estoque was successfully created"
    click_on "Back"
  end

  test "updating a Movimentacao estoque" do
    visit movimentacao_estoques_url
    click_on "Edit", match: :first

    fill_in "Data", with: @movimentacao_estoque.data
    fill_in "Operacao", with: @movimentacao_estoque.operacao_id
    fill_in "Pessoa", with: @movimentacao_estoque.pessoa_id
    fill_in "Produto", with: @movimentacao_estoque.produto_id
    fill_in "Quantidade", with: @movimentacao_estoque.quantidade
    click_on "Update Movimentacao estoque"

    assert_text "Movimentacao estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Movimentacao estoque" do
    visit movimentacao_estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movimentacao estoque was successfully destroyed"
  end
end
