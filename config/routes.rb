Cleric::Application.routes.draw do

  resources :stylesheets

  resources :pages

  resources :blogs, :path => '/blog'

  resources :bootstrapsettings

  resources :user_templates do
    collection do
      post 'preview'
      get 'preview'
    end
  end

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users, :skip => [:registrations]                                          

  resources :users, :path => '/people' do
    member do
      get 'edit_password'
      patch 'update_password'
    end
  end

  resources :rss_feeds, :path => '/rss'

  root to: 'static_pages#index'

  resources :shows, :path => ''

  resources :shows, :path => '', :only => [] do
    resources :episodes, :path => '', :except => [:index] do
      member do
        get 'audio'
      end
    end
  end

end
