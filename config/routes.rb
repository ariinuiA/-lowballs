Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #get 'items/:id' => 'pages#show', as: 'item'
  resources :items, only: [:index, :show]

  resources :items, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[edit update]
end
