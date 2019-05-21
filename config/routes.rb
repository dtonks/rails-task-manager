Rails.application.routes.draw do
  get 'tasks/new', to: 'tasks#new'
  get 'tasks', to: 'tasks#show'
  get 'tasks/:id', to: 'tasks#detail', as: :task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit'
  post 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
