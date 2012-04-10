class PageController < ApplicationController
  def index
    @country = GeoIP.new('db/GeoIP.dat').country(request.remote_ip)
  
    if(@country.country_code == 77)
    elsif @country.continent_code == "EU"
    else
    end
    
  end
end
