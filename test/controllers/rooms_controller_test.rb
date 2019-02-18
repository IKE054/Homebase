require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get item_create" do
    get rooms_item_create_url
    assert_response :success
  end

  test "should get item_destroy" do
    get rooms_item_destroy_url
    assert_response :success
  end

  test "should get show" do
    get rooms_show_url
    assert_response :success
  end

  test "should get new" do
    get rooms_new_url
    assert_response :success
  end

  test "should get create" do
    get rooms_create_url
    assert_response :success
  end

end
