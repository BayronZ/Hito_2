Rails.application.routes.draw do
  resources :hito_2s
  get 'home/index'
  devise_for :users
  resources :avisos

  root to: "home#index"
end
