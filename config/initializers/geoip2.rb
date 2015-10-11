Geoip2.configure do |conf|
  conf.user_id = ENV["MAXMIND_USER_ID"]
  conf.license_key = ENV["MAXMIND_LICENSE_KEY"]
end
