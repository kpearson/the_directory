TheDirectory::Application.routes.draw do
  root :to => "home#index"
  devise_for :users
  resources :home
	get 'businesses/list', to: 'businesses#list'
	get 'categories/list', to: 'categories#list'
  resources :businesses do
	  resources :categories
	end
  resources :buildings

  get 'search', to: 'businesses#search'
 
end
