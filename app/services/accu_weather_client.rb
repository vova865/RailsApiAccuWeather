class AccuWeatherClient
  URL = "http://dataservice.accuweather.com/currentconditions/v1/294021"

  def initialize(api_key)
    @api_key = api_key
  end

  def weather
    response = RestClient::Request.execute(method: :get, url: URL.to_s, headers: { params: { apikey: @api_key.to_s },
                                           content_type: :json, accept: :json })
    parse(response)
  end

  private

  def parse(response)
    JSON.parse(response.body) if response.code == 200
  end
end
