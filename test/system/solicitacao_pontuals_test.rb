require "application_system_test_case"

class SolicitacaoPontualsTest < ApplicationSystemTestCase
  setup do
    @solicitacao_pontual = solicitacao_pontuals(:one)
  end

  test "visiting the index" do
    visit solicitacao_pontuals_url
    assert_selector "h1", text: "Solicitacao Pontuals"
  end

  test "creating a Solicitacao pontual" do
    visit solicitacao_pontuals_url
    click_on "New Solicitacao Pontual"

    fill_in "Solicitação", with: @solicitacao_pontual.Solicitação
    click_on "Create Solicitacao pontual"

    assert_text "Solicitacao pontual was successfully created"
    click_on "Back"
  end

  test "updating a Solicitacao pontual" do
    visit solicitacao_pontuals_url
    click_on "Edit", match: :first

    fill_in "Solicitação", with: @solicitacao_pontual.Solicitação
    click_on "Update Solicitacao pontual"

    assert_text "Solicitacao pontual was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitacao pontual" do
    visit solicitacao_pontuals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitacao pontual was successfully destroyed"
  end
end
