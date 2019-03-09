require 'test_helper'

class DefisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defi = defis(:one)
  end

  test "should get index" do
    get defis_url
    assert_response :success
  end

  test "should get new" do
    get new_defi_url
    assert_response :success
  end

  test "should create defi" do
    assert_difference('Defi.count') do
      post defis_url, params: { defi: { name: @defi.name, user_id: @defi.user_id } }
    end

    assert_redirected_to defi_url(Defi.last)
  end

  test "should show defi" do
    get defi_url(@defi)
    assert_response :success
  end

  test "should get edit" do
    get edit_defi_url(@defi)
    assert_response :success
  end

  test "should update defi" do
    patch defi_url(@defi), params: { defi: { name: @defi.name, user_id: @defi.user_id } }
    assert_redirected_to defi_url(@defi)
  end

  test "should destroy defi" do
    assert_difference('Defi.count', -1) do
      delete defi_url(@defi)
    end

    assert_redirected_to defis_url
  end
end
