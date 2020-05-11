require 'test_helper'

class OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get order_products_edit_url
    assert_response :success
  end

  test "should get check" do
    get order_products_check_url
    assert_response :success
  end

  test "should get done" do
    get order_products_done_url
    assert_response :success
  end

  test "should get show" do
    get order_products_show_url
    assert_response :success
  end

end
