require 'test_helper'
require "minitest/autorun"

class HomeTest < ActiveSupport::TestCase
  # class HomeTest < Minitest::Test
  # test "the truth" do
  #   assert true
  # end

  def test_checking_if_agent_authorized
    home = Home.new
    @user = home.user_authorized?(agent)
    assert_equal home.user_authorized?(agent), @user
  end

end
