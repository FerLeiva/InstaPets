Rails.application.routes.draw do

  # User authentication
  devise_for :users

  # Active Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Photos Controller
  get 'photos', to: 'photos#index', as: 'photos_index'
  get 'my_photos', to: 'photos#my_photos', as: 'my_photos'
  get 'photos/new', to: 'photos#new', as: 'photo_new'
  post 'photos', to: 'photos#create', as: 'photo_create'
  get 'photos/:id', to: 'photos#show', as: 'photo_detail'
  get 'photos/:id/edit', to: 'photos#edit', as: 'photo_edit'
  patch 'photos/:id', to: 'photos#update', as: 'photo_update'
  delete 'photos/:id', to: 'photos#destroy', as: 'photo_destroy'

  # Welcom Controller
  get 'welcome/index', to: 'welcome#index', as: 'welcome_home'

  # Users Controller
  #get 'login', to: 'users#login', as: 'login'
  ##post 'login', to:'users#new_session', as:'user_new_session'
  #get 'logout', to: 'users#logout', as: 'logout'

  #Root
  root to: 'welcome#index'

end
