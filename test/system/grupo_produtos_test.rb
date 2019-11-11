require "application_system_test_case"

class GrupoProdutosTest < ApplicationSystemTestCase
  setup do
    @grupo_produto = grupo_produtos(:one)
  end

  test "visiting the index" do
    visit grupo_produtos_url
    assert_selector "h1", text: "Grupo Produtos"
  end

  test "creating a Grupo produto" do
    visit grupo_produtos_url
    click_on "New Grupo Produto"

    fill_in "Nome", with: @grupo_produto.nome
    click_on "Create Grupo produto"

    assert_text "Grupo produto was successfully created"
    click_on "Back"
  end

  test "updating a Grupo produto" do
    visit grupo_produtos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @grupo_produto.nome
    click_on "Update Grupo produto"

    assert_text "Grupo produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupo produto" do
    visit grupo_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupo produto was successfully destroyed"
  end
end
