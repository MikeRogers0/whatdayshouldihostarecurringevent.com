class EventsController < ApplicationController
  def show
    @ordinal = params[:ordinal]
    @day = params[:day]
    @next_event_date = RecurringEvent.new(ordinal: @ordinal, day: @day).next

    @location = Rails.cache.fetch("ip_lookup/#{request.remote_ip}", expires_in: 1.month) do
      IpToLocation.new(request.remote_ip)
    end

    if @location.present?
      @conflicting_events = ConflictingEvents.new(city: @location.city, country_code: @location.country_code, event_date: @next_event_date)
    else
      @conflicting_events = ConflictingEvents.new(city: "London", country_code: "GB", event_date: @next_event_date)
    end
  end
end
