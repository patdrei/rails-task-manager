Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create', as: :create
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  delete '/tasks/:id/delete', to: 'tasks#destroy', as: :destroy
  patch 'tasks/:id', to: 'tasks#update', as: :update
end
