Rails.application.routes.draw do
  namespace :api do
    get 'v1/list'
  end
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      resources :user_sessions, only: %i[create]
      resources :lists, only: %i[create]
    end
  end
end
