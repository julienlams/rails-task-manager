Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new", as: :new
  get "tasks/:id", to: "tasks#show", as: :show
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update", as: :task
  delete "tasks/:id", to: "tasks#delete", as: :delete


  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
