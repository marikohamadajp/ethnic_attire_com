Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dresses do
    resources :bookings, only: [ :new, :create ]
  end

  get "dashboard", to: "users#dashboard", as: :user_dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
