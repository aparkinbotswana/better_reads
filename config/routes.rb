Rails.application.routes.draw do

  root 'reviews#index'

  # get '/reviews/create' =>

  # get '/reviews/edit' =>

  # get '/reviews/update' =>

  # get '/reviews/show' =>

  get '/reviews' => 'reviews#index'
  #
  # get '/reviews/destroy' =>
  #
  # get '/books/create' =>
  #
  # get '/books/edit' =>
  #
  # get '/books/show' =>
  #
  # get '/books/destroy' =>
  #
  get '/users/new' => 'users#new'
  #
  # get '/users/create' =>
  #
  # get '/users/edit' =>
  #
  # get '/users/update' =>
  #
  get '/users/:id' => "users#show"

  # get '/users/destroy' =>

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
