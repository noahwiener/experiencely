Rails.application.routes.draw do
  root to: "static_pages#root"

  resources :users, only: [:new, :create, :edit, :update]
  resource :session, only: [:create, :destroy, :new]

  get '/account/login', to: 'users#new'
end
