require "test_helper"

class StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_index_url
    assert_response :success
  end

  test "should get search" do
    get staffs_search_url
    assert_response :success
  end
end
