require 'test_helper'

class ShopListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_list = shop_lists(:one)
  end

  test "should get index" do
    get shop_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_list_url
    assert_response :success
  end

  test "should create shop_list" do
    assert_difference('ShopList.count') do
      post shop_lists_url, params: { shop_list: { item: @shop_list.item, qtd: @shop_list.qtd } }
    end

    assert_redirected_to shop_list_url(ShopList.last)
  end

  test "should show shop_list" do
    get shop_list_url(@shop_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_list_url(@shop_list)
    assert_response :success
  end

  test "should update shop_list" do
    patch shop_list_url(@shop_list), params: { shop_list: { item: @shop_list.item, qtd: @shop_list.qtd } }
    assert_redirected_to shop_list_url(@shop_list)
  end

  test "should destroy shop_list" do
    assert_difference('ShopList.count', -1) do
      delete shop_list_url(@shop_list)
    end

    assert_redirected_to shop_lists_url
  end
end
