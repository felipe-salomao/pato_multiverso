Rails.application.routes.draw do

  namespace :api, path: '/' do
    resources :naves, only: [:index, :create, :show]
  end
end
