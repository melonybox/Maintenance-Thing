Rails.application.routes.draw do
  resources :overviews
  resources :items
  resources :item_subsection_parts
  resources :item_subsections
  namespace :api do
    namespace :v1 do
      resources :users

      get "/auto_login", to: "auth#auto_login"
      post "/login", to: "auth#login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
