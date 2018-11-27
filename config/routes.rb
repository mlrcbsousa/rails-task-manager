Rails.application.routes.draw do
  # subset except CRUD
  resources :tasks

  # # Read (all)
  # get "tasks", to: "tasks#index"

  # # Create (2 steps)
  # get "tasks/new", to: "tasks#new"
  # post "tasks", to: "tasks#create"

  # # NB: The `show` route needs to be *after* `new` route.
  # Read (one)
  # get "tasks/:id", to: "tasks#show", as: 'task'

  # Edit (2 steps)
  # get "tasks/:id/edit", to: "tasks#edit", as: 'task_edit'
  # patch "tasks/:id", to: "tasks#update"

  # # destroy
  # delete "tasks/:id", to: "tasks#destroy"

  #--------------------------------
  # # 7 CRUD routes in one line
  # resources :restaurants

  # # subset of CRUD
  # resources :restaurants, only: [:create, :index, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
