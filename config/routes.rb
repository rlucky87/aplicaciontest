Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show] do
    resources :bookings, only: %i[create]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
