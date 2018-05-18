require 'test_helper'

class VirtualDomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @virtual_domain = virtual_domains(:one)
  end

  test "should get index" do
    get virtual_domains_url
    assert_response :success
  end

  test "should get new" do
    get new_virtual_domain_url
    assert_response :success
  end

  test "should create virtual_domain" do
    assert_difference('VirtualDomain.count') do
      post virtual_domains_url, params: { virtual_domain: { name: @virtual_domain.name } }
    end

    assert_redirected_to virtual_domain_url(VirtualDomain.last)
  end

  test "should show virtual_domain" do
    get virtual_domain_url(@virtual_domain)
    assert_response :success
  end

  test "should get edit" do
    get edit_virtual_domain_url(@virtual_domain)
    assert_response :success
  end

  test "should update virtual_domain" do
    patch virtual_domain_url(@virtual_domain), params: { virtual_domain: { name: @virtual_domain.name } }
    assert_redirected_to virtual_domain_url(@virtual_domain)
  end

  test "should destroy virtual_domain" do
    assert_difference('VirtualDomain.count', -1) do
      delete virtual_domain_url(@virtual_domain)
    end

    assert_redirected_to virtual_domains_url
  end
end
