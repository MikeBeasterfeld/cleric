Cleric::Application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users

  resources :users, :only => [:show, :index]

  resources :shows do
  	resources :episodes
  end

  resources :rss_feeds


  root to: 'static_pages#index'
end
