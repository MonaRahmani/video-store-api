Rails.application.routes.draw do
  # get 'customers/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :videos, only: [:index, :show, :create]
  resources :customers, only: [:index]

  post "/rentals/check-out", to: "rentals#checkout", as: "checkout"
  post "/rentals/check-in", to: "rentals#checkin", as: "checkin"
end

