Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

root 'home#index'

resources :home
end
