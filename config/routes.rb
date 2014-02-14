Cleric::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :users, :only => [:show, :index]
  resources :shows, :only => [:show, :index] do
  	resources :episodes
  end

#  resources :episodes, :only => [:show, :index]

  root to: 'static_pages#index'
end
