Rails.application.routes.draw do

  resource :flights
  root "flights#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
