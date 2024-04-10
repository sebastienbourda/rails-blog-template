Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"

  # Auth routes
  resource :signup, only: [:new, :create]
  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"

  # Reset password routes
  resources :password_resets, only: [:new, :create, :edit, :update]
end
