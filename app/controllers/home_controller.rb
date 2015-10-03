class HomeController < ApplicationController
  def index
    return redirect_to event_interval_path(ordinal: random_ordinal, day: random_day), status: 303
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
      "sunday",
      "monday",
      "tuesday",
      "wednesday",
      "thursday",
      "friday",
      "saturday"
    ].sample
  end
end
