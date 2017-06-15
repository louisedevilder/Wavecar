Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :waves, only: [:index, :new, :create, :show], shallow: true do
    resources :cars, only: [:new, :create], shallow: true
      resources :bookings, only: [:new, :create], shallow: true
        resources :cowaves, only: [:show]
          resources :riders, only: [:show]
  end
  resources :bookings, only: [:index, :show]
end
