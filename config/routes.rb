Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    get 'display_bikes', to: 'bikes#display_bikes'
    get 'reservation_list', to: 'reservations#display_reservation'
    post 'create_reservation', to: 'reservations#create_reservation'
    post 'create_bikes', to: 'bikes#create_bikes'
    delete 'delete_bike/:id', to: 'bikes#delete_bikes'
    delete 'delete_reservation/:id', to: 'reservations#delete_reservation'
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
