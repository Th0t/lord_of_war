Rails.application.routes.draw do

  devise_for :users
  as :user do
    get 'account/profile/edit', to: 'devise/registrations#edit'
    patch 'account/profile', :as => :user_root
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :weapons, only: [ :index, :show] do
    resources :bookings, only: [:new, :create]
  end

  # get "/bookings/:id/reject",  to: "bookings#reject", as: "accept_booking"
  # get "/bookings/:id/accept",  to: "bookings#accept", as: "reject_booking"

  namespace :account do
    # get "/",             to: "profile#show"
    # get "/bookings",     to: "profile#bookings"
    # get "/reservings",   to: "profile#reservings"
    # get "/weapons",      to: "profile#weapons"

    resource :profile, only: [:show]
    resources :bookings_made_by_me, only: [:index, :show]
    resources :bookings_made_to_me, only: [:index] do
      member do
        patch :accept
        patch :reject
      end
    end
    resources :weapons, only: [:index, :new, :create]
  end
end
