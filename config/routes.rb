require 'sidekiq/web'

Rails.application.routes.draw do
  get "home/index"
  mount Sidekiq::Web => '/sidekiq'

  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end