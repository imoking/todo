Rails.application.routes.draw do
  get 'about'          => 'static_pages#about'
  get 'info'           => 'static_pages#info'

  get 'signup'         => 'users#new'
  post 'users/create'  => 'users#create'
  get 'users/index'    => 'users#index'
  get 'users/:id/show' => 'users#show'

  get '/'              => "todos#index"
  get 'todos/new'      => 'todos#new'
  get 'todos/:id/show' => 'todos#show'
  # resources 'todos'
  post 'todos/'        => 'todos#create'
  post 'todos/:id'     => 'todos#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
