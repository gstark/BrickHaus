require 'test_helper'

class HomeTest < ActiveSupport::TestCase
  test "The user who owns this home is authorized" do
    # setup
    user = User.new
    home = Home.new
    home.owner = user

    # assert that a home created by a user is authorized
    assert home.user_authorized?(user)
  end

  test "A home created by a different user isn't authorized" do
    # Setup
    owning_user = User.new
    non_owning_user = User.new

    # Moar setup
    home = Home.new
    home.owner = owning_user

    # expectation
    refute home.user_authorized?(non_owning_user)
  end
end
