Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

get '/about-us', to: 'home#about'
get 'contact-us', to: 'home#contact'

get '/all-posts', to: 'blog#posts'
get 'post/:id', to: 'blog#post', as: 'post'

get '/weekly', to: 'home#weekly'
get '/prospects', to: 'home#prospects'
get '/hot-and-not', to: 'home#hotornot'
get '/dynasty', to: 'home#dynasty'

root 'home#index'

resources :home

	resources :blog_post do 
		resources :comments
	end
	resources :comments do 
		resources :comments
	end
end
