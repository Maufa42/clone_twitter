Rails.application.routes.draw do
  devise_for :users, :controller=>{applications: "applications"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tweeets#index"
  resources :tweeets do
get "toggle" ,to: "likes#like_toggle"
  end
  get "tweeet", to: "tweeets#index"







  # get "sign_up",to: "users#new"
  # post "sign_up", to: "users#create"
  # patch "sign_up", to: "users#create"
  
  # get "sign_in", to: "sessions#new"
  # post "sign_in", to: "sessions#create" 
  # delete "delete_post", to: "tweeets#destroy"
  # delete "logout", to: "sessions#destroy"
end
