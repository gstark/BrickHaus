class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @recent_homes = Home.last(3)
  end
end
