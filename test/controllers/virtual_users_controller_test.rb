require 'test_helper'

class VirtualUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @virtual_user = virtual_users(:one)
  end

  test "should get index" do
    get virtual_users_url
    assert_response :success
  end

  test "should get new" do
    get new_virtual_user_url
    assert_response :success
  end

  test "should create virtual_user" do
    assert_difference('VirtualUser.count') do
      post virtual_users_url, params: { virtual_user: { email: @virtual_user.email, password: @virtual_user.password, virtual_domain_id: @virtual_user.virtual_domain_id } }
    end

    assert_redirected_to virtual_user_url(VirtualUser.last)
  end

  test "should show virtual_user" do
    get virtual_user_url(@virtual_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_virtual_user_url(@virtual_user)
    assert_response :success
  end

  test "should update virtual_user" do
    patch virtual_user_url(@virtual_user), params: { virtual_user: { email: @virtual_user.email, password: @virtual_user.password, virtual_domain_id: @virtual_user.virtual_domain_id } }
    assert_redirected_to virtual_user_url(@virtual_user)
  end

  test "should destroy virtual_user" do
    assert_difference('VirtualUser.count', -1) do
      delete virtual_user_url(@virtual_user)
    end

    assert_redirected_to virtual_users_url
  end
end
