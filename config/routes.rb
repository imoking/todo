Rails.application.routes.draw do
  get '/' => "todos#index"
  get 'todos/detile' => 'todos#detile'
  get 'todos/new' => 'todos#new'
  get 'todos/show' => 'todos#show'
  # resources 'todos'
  post 'todos/' => 'todos#create'
  post 'todos/:id' => 'todos#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
