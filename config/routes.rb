Rails.application.routes.draw do
  devise_for :users
  root to: 'dresses#index'

  resources :dresses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
