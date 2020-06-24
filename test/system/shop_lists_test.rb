require "application_system_test_case"

class ShopListsTest < ApplicationSystemTestCase
  setup do
    @shop_list = shop_lists(:one)
  end

  test "visiting the index" do
    visit shop_lists_url
    assert_selector "h1", text: "Shop Lists"
  end

  test "creating a Shop list" do
    visit shop_lists_url
    click_on "New Shop List"

    fill_in "Item", with: @shop_list.item
    fill_in "Qtd", with: @shop_list.qtd
    click_on "Create Shop list"

    assert_text "Shop list was successfully created"
    click_on "Back"
  end

  test "updating a Shop list" do
    visit shop_lists_url
    click_on "Edit", match: :first

    fill_in "Item", with: @shop_list.item
    fill_in "Qtd", with: @shop_list.qtd
    click_on "Update Shop list"

    assert_text "Shop list was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop list" do
    visit shop_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop list was successfully destroyed"
  end
end
