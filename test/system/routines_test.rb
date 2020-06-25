require "application_system_test_case"

class RoutinesTest < ApplicationSystemTestCase
  setup do
    @routine = routines(:one)
  end

  test "visiting the index" do
    visit routines_url
    assert_selector "h1", text: "Routines"
  end

  test "creating a Routine" do
    visit routines_url
    click_on "New Routine"

    fill_in "Dom", with: @routine.dom
    fill_in "Qua", with: @routine.qua
    fill_in "Qui", with: @routine.qui
    fill_in "Sab", with: @routine.sab
    fill_in "Seg", with: @routine.seg
    fill_in "Sex", with: @routine.sex
    fill_in "Ter", with: @routine.ter
    click_on "Create Routine"

    assert_text "Routine was successfully created"
    click_on "Back"
  end

  test "updating a Routine" do
    visit routines_url
    click_on "Edit", match: :first

    fill_in "Dom", with: @routine.dom
    fill_in "Qua", with: @routine.qua
    fill_in "Qui", with: @routine.qui
    fill_in "Sab", with: @routine.sab
    fill_in "Seg", with: @routine.seg
    fill_in "Sex", with: @routine.sex
    fill_in "Ter", with: @routine.ter
    click_on "Update Routine"

    assert_text "Routine was successfully updated"
    click_on "Back"
  end

  test "destroying a Routine" do
    visit routines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Routine was successfully destroyed"
  end
end
