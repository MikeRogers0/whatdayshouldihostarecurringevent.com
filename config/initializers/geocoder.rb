Geocoder.configure(
  :timeout      => 15,
  :ip_lookup    => :maxmind,
  :cache        => Rails.cache,
  :cache_prefix => "geocoder:",
  :maxmind => {
    :api_key => ENV["MAXMIND_API_KEY"],
    :service => :omni
  },
)
