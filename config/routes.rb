Rails.application.routes.draw do
  root to: "static_pages#root"

  resources :users, only: [:new, :create, :edit, :update, :index, :show]
  resource :session, only: [:create, :destroy, :new]

  namespace :api do
    resources :workshops, defaults: {format: :json}, only: [:index, :show]
  end

  get '/account/login', to: 'users#new'
end
