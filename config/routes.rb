Rails.application.routes.draw do
  # custom routes
  # http verb, url, controller#action
  get "pets", to: "pets#index"

  # resource method: generates 7 route that follow REST convention
  resource :shops
  resource :pets, only: [:show, :create, :new, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
