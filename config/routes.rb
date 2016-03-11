Rails.application.routes.draw do
	root 'buckets#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users

  resources :buckets do
  	resources :activities
  end
end
