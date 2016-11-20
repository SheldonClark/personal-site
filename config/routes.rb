Rails.application.routes.draw do


	root 'posts#index'

	resources :homepages, only: %i(index)
	resources :posts
end
