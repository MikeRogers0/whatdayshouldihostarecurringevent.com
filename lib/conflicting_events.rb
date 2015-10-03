class ConflictingEvents
  def initialize(args = {})
    @city = args[:city] || "London"
    @country_code = args[:country_code] || "GB"
    @event_date = args[:event_date] || (Date.today.beginning_of_month + 1.month)
    @nearby_events = nil

    @city =  "London"
    @country_code = "GB"
  end

  def count
    Rails.cache.fetch("/#{@country_code}/#{@city}/#{@event_date.beginning_of_day.to_s}/event_count", expires_in: 24.hours) do
      nearby_events["meta"]["total_count"]
    end
  end

  def nearby_events
    @nearby_events ||= MeetupApi.new.open_events({
      city: @city,
      country: @country_code,
      format: 'json',
      status: 'upcoming',
      page: '1',
      radius: '15',
      time: "#{@event_date.beginning_of_day.to_i * 1000},#{@event_date.end_of_day.to_i * 1000}",
      only: "id"
    })
  end

  def url
    "http://www.meetup.com/find/events/?allMeetups=true&radius=25&mcName=#{@city}%2C+#{@country_code}&eventFilter=all&day=#{@event_date.day}&month=#{@event_date.month}&year=#{@event_date.year}"
  end

  def city
    @city
  end
end
