Rails.application.routes.draw do

  root 'home#index'

  get '/(:ordinal)-(:day)-of-every-month', to: 'event#show', constraints: {
    ordinal: /[1st|2nd|3rd|4th]+/,
    day: /[a-z]+/
  }, as: :event_interval
end
