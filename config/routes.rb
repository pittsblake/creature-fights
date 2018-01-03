Rails.application.routes.draw do

  namespace :api do
    resources :users do
      resources :creatures
    end
  end

end
