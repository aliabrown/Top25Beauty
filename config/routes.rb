Top25Beauty::Application.routes.draw do
  
  # get "list_items/index"
root to: 'sessions#new'

  get 'login'   => 'sessions#new'
  post 'login'  => 'sessions#create'
  get 'logout'  => 'sessions#destroy'

  get 'signup'  => 'users#new'
  post 'signup' => 'users#create'

  get 'users/new' => 'users#new'

  # get 'list_items' => 'list_items#index'
  # get 'list_items/new' => 'list_items#new'
  # post 'list_items' => 'list_items#create'
  # get 'list_items/:id'    => 'list_items#show'
  # delete 'list_items/:id' => 'list_items#destroy'

  resources :list_items

  resources :products
  
end
