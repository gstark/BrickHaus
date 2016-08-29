class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    homes = Home.all
    unless Home.all.empty?
      @recent_homes = homes.last(3)
    else
      "Great listings coming soon!"
    end
  end
end
