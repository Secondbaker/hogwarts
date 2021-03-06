Rails.application.routes.draw do
  resources 'teachers', only: [:index, :show]
  # GET / => houses#index
  root to: 'houses#index'
  # can have multiple routes to the same endpoint, e.g.:  get 'houses', to: 'houses#index'
  # Google may punish this unless you mark one as canonical in metadata

  # GET houses/:id => houses#show
  # get 'houses/:id', to: "houses#show", as: 'house', id: /\d+/

  resources 'houses', only: [:index, :show]
  # equivalent to GET /houses => houses#index
  # also GET /houses/:id => houses#show

  resources 'students', only: [:index, :show]
  # GET /students => students#index
  # GET /students:id => students#show

  resources 'teachers', only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
