require "test_helper"

class MyScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_schedule_index_url
    assert_response :success
  end
end
