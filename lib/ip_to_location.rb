class IpToLocation
  def initialize(remote_ip)
    request = Geoip2.city(remote_ip)

    @city = request.city.names.en
    @country_code = request.country.iso_code
  end

  def city
    @city
  end

  def country_code
    @country_code
  end
end
