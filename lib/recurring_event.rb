class RecurringEvent
  def initialize(args = {})
    @ordinal = args[:ordinal]
    @day = args[:day]
    @beginning_of_month = Date.today.beginning_of_month
  end

  #def previous
  #end

  def next
    next_first_occourance_of_day + ordinal_to_i.weeks
  end

  private
  def next_first_occourance_of_day
    @beginning_of_month += (ordinal_to_i - @beginning_of_month.wday) % 7
  end

  def day_to_i
    @day_to_i ||= days_of_week.each_index.select{|i| days_in_week[i] == @day}.first
  end

  def days_of_week
    [
      "sunday",
      "monday",
      "tuesday",
      "wednesday",
      "thursday",
      "friday",
      "saturday"
    ]
  end

  def ordinal_to_i
    @ordinal_to_i ||= ordinals.each_index.select{|i| ordinals[i] == @ordinal}.first
  end

  def ordinals
    [
      "1st",
      "2nd", 
      "3rd", 
      "4th"
    ]
  end
end
