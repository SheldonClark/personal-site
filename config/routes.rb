Rails.application.routes.draw do


	root 'homepage#index'

	resources :homepages, only: %i(index)
end
