# frozen_string_literal: true

class WeatherDataLoader

  def load_data
    client = AccuWeatherClient.new(ENV['API_Key'])
    client.weather.each do |data|
      WeatherDatum.where(data: data['EpochTime'])
                  .find_or_create_by(temperature: data.dig['Temperature', 'Metric', 'Value'])
    end
  end

  # def call(*args)
  #   new(*args).load_data
  # end
  #
  # private
  #
  # def load_data
  #   client = AccuWeatherClient.new(ENV['API_Key'])
  #   client.weather.each do |data|
  #     WeatherDatum.where(data: data['EpochTime'])
  #                 .find_or_create_by(temperature: data.dig['Temperature', 'Metric', 'Value'])
  #   end
  # end
end

