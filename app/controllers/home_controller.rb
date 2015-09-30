class HomeController < ApplicationController
  def index
    redirect_to event_interval_path ordinal: "1st", day: "monday"
  end
end
