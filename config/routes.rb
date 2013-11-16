TheDirectory::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "home#index"
  devise_for :users
  # ActiveAdmin.routes(self)
  resources :home
	get 'businesses/list', to: 'businesses#list'
	get 'categories/list', to: 'categories#list'
  resources :businesses do
	  resources :categories
	end
  resources :buildings

  get 'search', to: 'businesses#search'
 
end
