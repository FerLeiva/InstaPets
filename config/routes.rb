Rails.application.routes.draw do

  # User authentication
  devise_for :users

  # Active Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Photos Controller
  get 'my_photos', to: 'photos#my_photos', as: 'my_photos'
  resources :photos

  # Welcom Controller
  get 'welcome/index', to: 'welcome#index', as: 'welcome_home'

  # API
  namespace :api do 
    namespace :v1 do
      resources :users, except: [:new, :edit]
      resources :photos, except: [:new, :edit]
    end
  end

  # Users Controller
  #get 'login', to: 'users#login', as: 'login'
  ##post 'login', to:'users#new_session', as:'user_new_session'
  #get 'logout', to: 'users#logout', as: 'logout'

  #Root
  root to: 'welcome#index'

end
