TheDirectory::Application.routes.draw do
  root :to => "businesses#index"
  devise_for :users
  resources :businesses
  resources :buildings
  resources :categories

  get 'search', to: 'businesses#search'
 
end
