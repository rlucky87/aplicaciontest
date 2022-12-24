Rails.application.routes.draw do
  get 'booking/restaurant'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :restaurants, only: %i[index show] do
    resources :bookings, only: %i[create]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
