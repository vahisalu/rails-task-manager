Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  resources :tasks
  # READ

  # Read all the tasks
  get 'tasks', to: 'tasks#index'
  # Read one task
  get 'tasks/:id', to: 'tasks#show'

  # CREATE

  # Create a new task
  # show the task
  get 'tasks/new', to: 'tasks#new'
  # create new task
  post 'tasks', to: 'tasks#create'

  # UPDATE

  # edit the task
  get 'tasks/:id', to: 'tasks#edit'
  # update the task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  # delete the task
  delete 'tasks/:id', to: 'tasks#destroy'
end
