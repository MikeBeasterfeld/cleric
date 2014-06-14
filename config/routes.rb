Cleric::Application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users

  resources :users do
    collection do
      post 'create_user', to: 'users#create'
    end
  end

  resources :shows do
    get :next
  	resources :episodes
  end

  resources :rss_feeds


  root to: 'static_pages#index'
end
