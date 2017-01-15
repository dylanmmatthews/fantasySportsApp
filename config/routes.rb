Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

get '/all-posts', to: 'blog#posts'

root 'home#index'

resources :home
end
