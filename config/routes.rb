TheDirectory::Application.routes.draw do
  root :to => "businesses#index"
  devise_for :users
  resources :businesses do
	  resources :categories
	end
  resources :buildings

  get 'search', to: 'businesses#search'
 
end
