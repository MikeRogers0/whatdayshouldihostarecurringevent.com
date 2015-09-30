class HomeController < ApplicationController
  def index
    redirect_to event_interval_path ordinal: random_ordinal, day: random_day
  end

  private
  def random_ordinal
    [
      "1st",
      "2nd", 
      "3rd", 
      "4th"
    ].sample
  end

  def random_day
    [
      "monday",
      "tuesday",
      "wednesday",
      "thursday",
      "friday",
      "saturday",
      "sunday"
    ].sample
  end
end
