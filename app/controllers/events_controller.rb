class EventsController < ApplicationController
  def show
    @ordinal = params[:ordinal]
    @day = params[:day]
    @next_event_date = RecurringEvent.new(ordinal: @ordinal, day: @day).next
    raise request.location.inspect
    if request.location.present?
      @conflicting_events = ConflictingEvents.new(city: request.location.city, country_code: request.location.country_code, event_date: @next_event_date)
    else
      @conflicting_events = ConflictingEvents.new(city: "London", country_code: "GB", event_date: @next_event_date)
    end
  end
end
