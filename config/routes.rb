Cleric::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :users
  resources :shows

  root to: 'static_pages#index'
end
