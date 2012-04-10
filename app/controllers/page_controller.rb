class PageController < ApplicationController
  def index
    @country = GeoIP.new('db/GeoIP.dat').country(request.remote_ip)
  end
end
