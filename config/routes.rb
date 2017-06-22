Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  root 'reviews#index'

# below get pathway probably needs :id param as well to link to appropriate user
  # get '/reviews/new' => 'reviews#new'
  # post '/reviews/create' => 'reviews#create'


  get "/reviews/:id/edit" => "reviews#edit"
  post '/reviews/:id' => 'reviews#update'

  # get '/reviews/show' =>

  get '/reviews' => 'reviews#index'
  #  #
  get '/users/new' => 'users#new'
  delete "/users/:id" => "users#destroy"

  # get '/users/create' =>
  #
  get "/users/:id/edit" => "users#edit"
  post "/users/:id" => "users#update"
  #
  get '/users/:id' => "users#show"

  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)


  resources :users
  resources :books
  resources :reviews


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
