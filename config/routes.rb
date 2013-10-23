TheDirectory::Application.routes.draw do
  root :to => "businesses#index"
  devise_for :users
  resources :businesses

  get 'search', to: 'businesses#search'
 
end
