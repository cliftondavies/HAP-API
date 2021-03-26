Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :hikes, only: %i[index show] do
    resources :appointments, only: [:create]
  end

  resources :appointments, path: 'bookings', only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
