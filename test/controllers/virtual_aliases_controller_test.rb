require 'test_helper'

class VirtualAliasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @virtual_alias = virtual_aliases(:one)
  end

  test "should get index" do
    get virtual_aliases_url
    assert_response :success
  end

  test "should get new" do
    get new_virtual_alias_url
    assert_response :success
  end

  test "should create virtual_alias" do
    assert_difference('VirtualAlias.count') do
      post virtual_aliases_url, params: { virtual_alias: { destination: @virtual_alias.destination, source: @virtual_alias.source, virtual_domain_id: @virtual_alias.virtual_domain_id } }
    end

    assert_redirected_to virtual_alias_url(VirtualAlias.last)
  end

  test "should show virtual_alias" do
    get virtual_alias_url(@virtual_alias)
    assert_response :success
  end

  test "should get edit" do
    get edit_virtual_alias_url(@virtual_alias)
    assert_response :success
  end

  test "should update virtual_alias" do
    patch virtual_alias_url(@virtual_alias), params: { virtual_alias: { destination: @virtual_alias.destination, source: @virtual_alias.source, virtual_domain_id: @virtual_alias.virtual_domain_id } }
    assert_redirected_to virtual_alias_url(@virtual_alias)
  end

  test "should destroy virtual_alias" do
    assert_difference('VirtualAlias.count', -1) do
      delete virtual_alias_url(@virtual_alias)
    end

    assert_redirected_to virtual_aliases_url
  end
end
