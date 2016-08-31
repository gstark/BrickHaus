require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_not_owned = homes(:not_owned)
    @home_owned_by_gavin = homes(:home_created_by_gavin)

    @user = users(:gavin)

    # Login a user with the expected username and password we
    # created in the users.yml fixture file
    post user_session_url, params: { user: { email: "gavin@gstark.com" , password: "1234567" } }
  end

  test "should get index" do
    get homes_url
    assert_response :success
  end

  test "should get new" do
    get new_home_url
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post homes_url, params: { home: { address: @home_not_owned.address, baths: @home_not_owned.baths, beds: @home_not_owned.beds, description: @home_not_owned.description, price: @home_not_owned.price, square_footage: @home_not_owned.square_footage } }
    end

    assert_redirected_to home_url(Home.last)
  end

  test "should show home" do
    get home_url(@home_not_owned)

    assert_response :success
  end

  test "should get edit if the user created the home" do
    get edit_home_url(@home_owned_by_gavin)

    assert_response :success
  end

  test "should be redirected if the user did NOT create the home" do
    # This home was *not* created by the current user
    get edit_home_url(@home_not_owned)

    assert_redirected_to homes_path
  end

  test "should update home" do
    patch home_url(@home_owned_by_gavin), params: { home: { address: @home_owned_by_gavin.address, baths: @home_owned_by_gavin.baths, beds: @home_owned_by_gavin.beds, description: @home_owned_by_gavin.description, price: @home_owned_by_gavin.price, square_footage: @home_owned_by_gavin.square_footage } }
    assert_redirected_to home_url(@home_owned_by_gavin)
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete home_url(@home_owned_by_gavin)
    end

    assert_redirected_to homes_url
  end
end
