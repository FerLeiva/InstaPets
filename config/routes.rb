Rails.application.routes.draw do
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Photos Controller
  get 'photos/:id', to: 'photos#show', as: 'photo_detail'

  # Welcom Controller
  get 'welcome/index', to: 'welcome#index', as: 'welcome_home'

  # Users Controller
  get 'login', to: 'users#login', as: 'login'
  post 'login', to:'users#new_session', as:'user_new_session'
  get 'logout', to: 'users#logout', as: 'logout'

  #Root
  root to: 'welcome#index'

end
