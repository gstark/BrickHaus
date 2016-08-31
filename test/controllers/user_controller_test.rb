require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  Devise::Test::ControllerHelpers
  test "should get show" do
    get user_show_url
    assert_response :success
  end

end
