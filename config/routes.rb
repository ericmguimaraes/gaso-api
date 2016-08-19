Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :cars
      resources :station_rates
      resources :users
      resources :obd_log_groups
      resources :obd_logs
    end
  end
end
