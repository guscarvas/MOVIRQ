require "application_system_test_case"

class ReservaAceitaTest < ApplicationSystemTestCase
  setup do
    @reserva_aceitum = reserva_aceita(:one)
  end

  test "visiting the index" do
    visit reserva_aceita_url
    assert_selector "h1", text: "Reserva Aceita"
  end

  test "creating a Reserva aceitum" do
    visit reserva_aceita_url
    click_on "New Reserva Aceitum"

    fill_in "Dono", with: @reserva_aceitum.dono
    fill_in "Esporte", with: @reserva_aceitum.esporte
    fill_in "Fim", with: @reserva_aceitum.fim
    fill_in "Inicio", with: @reserva_aceitum.inicio
    fill_in "Naipe", with: @reserva_aceitum.naipe
    click_on "Create Reserva aceitum"

    assert_text "Reserva aceitum was successfully created"
    click_on "Back"
  end

  test "updating a Reserva aceitum" do
    visit reserva_aceita_url
    click_on "Edit", match: :first

    fill_in "Dono", with: @reserva_aceitum.dono
    fill_in "Esporte", with: @reserva_aceitum.esporte
    fill_in "Fim", with: @reserva_aceitum.fim
    fill_in "Inicio", with: @reserva_aceitum.inicio
    fill_in "Naipe", with: @reserva_aceitum.naipe
    click_on "Update Reserva aceitum"

    assert_text "Reserva aceitum was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserva aceitum" do
    visit reserva_aceita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserva aceitum was successfully destroyed"
  end
end
