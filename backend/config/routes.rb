Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tasks, only: :index

      # 1. GET api/v1/health_check
      get :health_check, to: 'health_check#index'
    end
  end
end
