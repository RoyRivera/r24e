Rails.application.routes.draw do
  resources :user_sessions

  resources :users

  root to: 'users#index'
end
