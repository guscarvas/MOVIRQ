require "application_system_test_case"

class AtleticasTest < ApplicationSystemTestCase
  setup do
    @atletica = atleticas(:one)
  end

  test "visiting the index" do
    visit atleticas_url
    assert_selector "h1", text: "Atleticas"
  end

  test "creating a Atletica" do
    visit atleticas_url
    click_on "New Atletica"

    fill_in "Email", with: @atletica.email
    fill_in "Name", with: @atletica.name
    fill_in "Password", with: @atletica.password
    click_on "Create Atletica"

    assert_text "Atletica was successfully created"
    click_on "Back"
  end

  test "updating a Atletica" do
    visit atleticas_url
    click_on "Edit", match: :first

    fill_in "Email", with: @atletica.email
    fill_in "Name", with: @atletica.name
    fill_in "Password", with: @atletica.password
    click_on "Update Atletica"

    assert_text "Atletica was successfully updated"
    click_on "Back"
  end

  test "destroying a Atletica" do
    visit atleticas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atletica was successfully destroyed"
  end
end
