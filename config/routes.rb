Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "capstones#index"
  get "/capstones", to: 'capstones#index'
  get "/capstones/:id", to:'capstones#show'

end
