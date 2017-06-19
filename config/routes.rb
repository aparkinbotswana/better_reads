Rails.application.routes.draw do
  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/show'

  get 'reviews/index'

  get 'reviews/destroy'

  get 'books/create'

  get 'books/edit'

  get 'books/update'

  get 'books/show'

  get 'books/index'

  get 'books/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/show'

  get 'users/index'

  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
