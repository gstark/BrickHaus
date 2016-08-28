class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    homes = Home.all
    @last_three = homes.last(3)
  end
end
