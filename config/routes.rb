Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # home page
  get 'tasks', to: 'tasks#index'
  # create new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # show single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update task
  get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
