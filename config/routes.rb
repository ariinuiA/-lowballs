Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # The user will need to see the bookings of his items, this route will provide with the correct path.
  get "my_bookings" => "bookings#my_bookings"
  # The user will need to see the items that he has rented from other people, this route will provide the user with the correct path.
  get "my_rented_items" => "bookings#my_rented_items"

  resources :items, only: %i[new create index show edit update] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[edit update]
  get "requests", to: "bookings#requests"
end
