Rails.application.routes.draw do

  namespace :api do
    get '/creatures', to: 'creatures#index'
     
  end

end
