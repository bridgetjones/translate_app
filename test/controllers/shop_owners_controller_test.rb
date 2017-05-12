require 'test_helper'

class ShopOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_owner = shop_owners(:one)
  end

  test "should get index" do
    get shop_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_owner_url
    assert_response :success
  end

  test "should create shop_owner" do
    assert_difference('ShopOwner.count') do
      post shop_owners_url, params: { shop_owner: { address: @shop_owner.address, name: @shop_owner.name, password: @shop_owner.password, shop_name: @shop_owner.shop_name, user_name: @shop_owner.user_name } }
    end

    assert_redirected_to shop_owner_url(ShopOwner.last)
  end

  test "should show shop_owner" do
    get shop_owner_url(@shop_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_owner_url(@shop_owner)
    assert_response :success
  end

  test "should update shop_owner" do
    patch shop_owner_url(@shop_owner), params: { shop_owner: { address: @shop_owner.address, name: @shop_owner.name, password: @shop_owner.password, shop_name: @shop_owner.shop_name, user_name: @shop_owner.user_name } }
    assert_redirected_to shop_owner_url(@shop_owner)
  end

  test "should destroy shop_owner" do
    assert_difference('ShopOwner.count', -1) do
      delete shop_owner_url(@shop_owner)
    end

    assert_redirected_to shop_owners_url
  end
end
