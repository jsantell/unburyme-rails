Unburyme::Application.routes.draw do
  get '/' => 'users#index'
  resources :users
  match '/sessions/create' => 'sessions#create'
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'users#index'
  match 'logout' => 'sessions#destroy', via: [:get, :delete], as: :logout
  match ':controller(/:action(/:id(.:format)))'

  root :to => 'users#index'
end
