Rails.application.routes.draw do
  resources :section_tags
  resources :section_parts
  resources :section_items
  resources :section_overviews
  namespace :api do
    namespace :v1 do
      resources :users

      get "/auto_login", to: "auth#auto_login"
      post "/login", to: "auth#login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
