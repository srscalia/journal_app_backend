Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :journals
      resources :entries
      post '/login', to: 'auth#create'
    end
  end
end
