Rails.application.routes.draw do

  root 'reviews#index'

  # get '/reviews/create' =>

  # get '/reviews/show' =>

  get '/reviews' => 'reviews#index'
  #  #
  # get '/books/create' =>
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
