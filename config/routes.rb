Rails.application.routes.draw do
  get "/", to: "home#index"

  get "/(:ordinal)-(:day)-of-every-month", to: "events#show", constraints: {
    ordinal: /[1st|2nd|3rd|4th]+/,
    day: /[a-z]+/
  }, as: :event_interval

  root "home#index"
end
