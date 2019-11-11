require "application_system_test_case"

class OperacosTest < ApplicationSystemTestCase
  setup do
    @operaco = operacos(:one)
  end

  test "visiting the index" do
    visit operacos_url
    assert_selector "h1", text: "Operacos"
  end

  test "creating a Operaco" do
    visit operacos_url
    click_on "New Operaco"

    fill_in "Nome", with: @operaco.nome
    fill_in "Tipo", with: @operaco.tipo
    click_on "Create Operaco"

    assert_text "Operaco was successfully created"
    click_on "Back"
  end

  test "updating a Operaco" do
    visit operacos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @operaco.nome
    fill_in "Tipo", with: @operaco.tipo
    click_on "Update Operaco"

    assert_text "Operaco was successfully updated"
    click_on "Back"
  end

  test "destroying a Operaco" do
    visit operacos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operaco was successfully destroyed"
  end
end
