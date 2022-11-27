Rails.application.routes.draw do
  # Authentication routes
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/authorized", to: "sessions#show"
  get "/dashboard", to: "users#show"

  # Projects
  namespace "api" do
    resources :projects
    resources :forms, only: %i[index create update destroy]
  end
end
