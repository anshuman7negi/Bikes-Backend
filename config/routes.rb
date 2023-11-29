Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    get 'display_bikes', to: 'bikes#display_bikes'
    post 'create_bike', to: 'bikes#create_bikes'
    delete 'delete_bikes/:id', to: 'bikes#delete_bikes', as: 'delete_bikes'
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
