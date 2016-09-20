Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  # Active Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, defaults: { format: 'json' } do
    # make devise available for the global scope (confirmable, password resets...)
    # devise_for :users, :skip => [:sessions, :passwords, :registrations]

    # resources :users, only: [:show, :update]
    resources :customers, only: [:index, :show, :create, :update, :destroy]
    resources :services, only: [:index, :show, :create, :update, :destroy]
    resources :performances, only: [:create, :update, :destroy]

  end

  mount Raddocs::App => '/docs'

  root to: 'admin/dashboard#index'
end
