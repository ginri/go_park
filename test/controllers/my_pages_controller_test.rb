require "test_helper"

class MyPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get my_pages_show_url
    assert_response :success
  end

  test "should get edit" do
    get my_pages_edit_url
    assert_response :success
  end

  test "should get update" do
    get my_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get my_pages_destroy_url
    assert_response :success
  end
end
