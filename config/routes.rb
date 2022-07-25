Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "mains#view"

  get "sign_up",to: "users#new"
  post "sign_up", to: "users#create"
  patch "sign_up", to: "users#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create" 

  delete "logout", to: "sessions#destroy"
  resources :tweeets
end
