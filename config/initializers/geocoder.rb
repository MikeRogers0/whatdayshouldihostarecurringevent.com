Geocoder.configure(
  :timeout      => 15,
  :ip_lookup    => :telize,
  :cache        => Rails.cache,
  :cache_prefix => "geocoder:",
)
