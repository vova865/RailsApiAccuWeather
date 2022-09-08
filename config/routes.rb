Rails.application.routes.draw do
  namespace :api do
    get '/current', to: 'weather#current'
    get '/historical', to: 'weather#historical'
    get '/historical/max', to: 'weather#historical_max'
    get '/historical/min', to: 'weather#historical_min'
    get '/historical/avg', to: 'weather#historical_avg'
    get '/by_time', to: 'api/weather#by_time'
    get '/health', to: 'api/weather#health'
  end
end
