Rails.application.routes.draw do

  namespace :api do
    resources :users do
      resources :creatures
    end
    get "/allcreatures", to: "all_creatures#index"
    get "/allcreatures/random", to: "all_creatures#show"
  end
end
