Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :items
      resources :alerts
      resources :descriptions

      get "/auto_login", to: "auth#auto_login"
      post "/login", to: "auth#login"
    end
  end
end
