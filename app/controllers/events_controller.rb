class EventsController < ApplicationController
  def show
    @ordinal = params[:ordinal]
    @day = params[:day]
  end
end
