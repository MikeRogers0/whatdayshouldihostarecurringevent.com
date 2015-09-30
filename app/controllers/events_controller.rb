class EventsController < ApplicationController
  force_ssl
  
  def show
    @ordinal = params[:ordinal]
    @day = params[:day]
  end
end
