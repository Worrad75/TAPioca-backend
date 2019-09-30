Rails.application.routes.draw do
  # resources :scores
  # resources :games
  # resources :users

  namespace :api do 
    namespace :v1 do 
      get "/users", to: "users#index"
      get "/users/:id", to: "users#show"
      resources :games 
      resources :scores
    end
  end

end
