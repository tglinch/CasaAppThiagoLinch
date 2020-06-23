require "application_system_test_case"

class FamiliarsTest < ApplicationSystemTestCase
  setup do
    @familiar = familiars(:one)
  end

  test "visiting the index" do
    visit familiars_url
    assert_selector "h1", text: "Familiars"
  end

  test "creating a Familiar" do
    visit familiars_url
    click_on "New Familiar"

    fill_in "Name", with: @familiar.name
    click_on "Create Familiar"

    assert_text "Familiar was successfully created"
    click_on "Back"
  end

  test "updating a Familiar" do
    visit familiars_url
    click_on "Edit", match: :first

    fill_in "Name", with: @familiar.name
    click_on "Update Familiar"

    assert_text "Familiar was successfully updated"
    click_on "Back"
  end

  test "destroying a Familiar" do
    visit familiars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Familiar was successfully destroyed"
  end
end
