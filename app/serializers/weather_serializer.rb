class WeatherSerializer < ActiveModel::Serializer
  attributes :temperature, :datetime
end
