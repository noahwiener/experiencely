Rails.application.routes.draw do
  root to: "static_pages#root"

  get 'users/current', to: 'users#show'

  resources :users, only: [:new, :create, :edit, :update]

  resources :users, defaults: {format: :json}, only: [:index, :show]

  resource :session, only: [:create, :destroy, :new]


  namespace :api do
    resources :workshops, defaults: {format: :json}, only: [:index, :show]
    resources :signups, defaults: {format: :json}, only: [:create, :destroy, :index]
  end

  get '/account/login', to: 'users#new'

end
