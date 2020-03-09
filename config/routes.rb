Rails.application.routes.draw do
  # GET / => houses#index
  root to: 'houses#index'
  # GET houses/:id => houses#show
  get 'houses/:id', to: "houses#show", as: 'house', id: /\d+/
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
