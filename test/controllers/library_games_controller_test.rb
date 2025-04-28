require "test_helper"

class LibraryGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get library_games_show_url
    assert_response :success
  end

  test "should get new" do
    get library_games_new_url
    assert_response :success
  end

  test "should get edit" do
    get library_games_edit_url
    assert_response :success
  end
end
