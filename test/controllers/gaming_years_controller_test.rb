require "test_helper"

class GamingYearsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gaming_years_index_url
    assert_response :success
  end

  test "should get new" do
    get gaming_years_new_url
    assert_response :success
  end

  test "should get edit" do
    get gaming_years_edit_url
    assert_response :success
  end
end
