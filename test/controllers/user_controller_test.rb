require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:gavin)

    # Login a user with the expected username and password we
    # created in the users.yml fixture file
    post user_session_url, params: { user: { email: "gavin@gstark.com" , password: "1234567" } }
  end

  test "should get show" do
    get show_profile_url(@user)
    assert_response :success
  end
end
