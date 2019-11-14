require "application_system_test_case"

class ReservasTest < ApplicationSystemTestCase
  setup do
    @reserva = reservas(:one)
  end

  test "visiting the index" do
    visit reservas_url
    assert_selector "h1", text: "Reservas"
  end

  test "creating a Reserva" do
    visit reservas_url
    click_on "New Reserva"

    fill_in "", with: @reserva.
    fill_in "Dia", with: @reserva.dia
    fill_in "Inicio", with: @reserva.inicio
    fill_in "Modalidade", with: @reserva.modalidade
    fill_in "Naipe", with: @reserva.naipe
    fill_in "Odp", with: @reserva.odp
    fill_in "Ph", with: @reserva.ph
    fill_in "Termino", with: @reserva.termino
    click_on "Create Reserva"

    assert_text "Reserva was successfully created"
    click_on "Back"
  end

  test "updating a Reserva" do
    visit reservas_url
    click_on "Edit", match: :first

    fill_in "", with: @reserva.
    fill_in "Dia", with: @reserva.dia
    fill_in "Inicio", with: @reserva.inicio
    fill_in "Modalidade", with: @reserva.modalidade
    fill_in "Naipe", with: @reserva.naipe
    fill_in "Odp", with: @reserva.odp
    fill_in "Ph", with: @reserva.ph
    fill_in "Termino", with: @reserva.termino
    click_on "Update Reserva"

    assert_text "Reserva was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserva" do
    visit reservas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserva was successfully destroyed"
  end
end
