Rails.application.routes.draw do

  resources :flights, only: [:new, :create, :index, :show]
  resource :bookings, only: [:new, :create, :show]
  root "flights#index"
  get "all", to: "flights#allflight"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
