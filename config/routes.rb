Rails.application.routes.draw do
  namespace :admins do
    root to: 'dashboards#index'
    resource :dashboard, only: [:index]
  end
  root to: 'home#index'

  devise_for :admins
end
