Rails.application.routes.draw do
  resources :cases
  namespace :api do
    namespace :v1 do
      resources :notes, only: [:index, :update]
    end
  end
end
