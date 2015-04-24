Rails.application.routes.draw do
  resources :user_sessions

  resources :users do
    collection do
      get :remove_user_without_picture
    end
  end

  root to: 'users#index'
end
