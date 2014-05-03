Cleric::Application.routes.draw do

  devise_for :users

  resources :users, :only => [:show, :index]
  resources :shows do
  	resources :episodes
  end


  root to: 'static_pages#index'
end
