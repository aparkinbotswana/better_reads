Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  root 'reviews#index'

# below get pathway probably needs :id param as well to link to appropriate user
  get '/reviews/create' => 'reviews#new'
  get "/reviews/:id/edit" => "reviews#edit"
  post '/reviews/create' => 'reviews#update'

  # get '/reviews/show' =>

  get '/reviews' => 'reviews#index'
  #  #
  get '/books/create' => 'books#new'
  # get "/books/:id/edit" => "books#edit"
  post '/books/create' => 'books#update'
  #  #
  # get '/books/show' =>
  #  #
  get '/users/new' => 'users#new'
  #
  # get '/users/create' =>
  #
  get "/users/:id/edit" => "users#edit"
  post "/users/:id" => "users#update"
  #
  get '/users/:id' => "users#show"

  # get '/users/destroy' =>

  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)


  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
