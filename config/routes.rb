Rails.application.routes.draw do
  resources :hito_2s
  get 'home/index'
  devise_for :users , controllers: {registrations: 'users/registrations'}
  resources :avisos

  root to: "home#index"
end
