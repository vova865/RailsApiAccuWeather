class Api::WeatherController < ApplicationController

  def current
    # binding.pry
    # client = AccuWeatherClient.new(ENV['API_Key'])
    # res = client.weather
    # weather = WeatherDatum.create(temperature: res[0]['Temperature']['Metric']['Value'].to_f, datetime: res[0]['EpochTime'])
    WeatherDataLoader.where


    render json: weather, serializer: WeatherSerializer
  end

  def historical

  end

  def  historical_max

  end

  def historical_min

  end

  def historical_avg

  end

  def by_time

  end

  def health

  end
end

