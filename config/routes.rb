Rails.application.routes.draw do
  resources :avisos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "avisos#index"
end
