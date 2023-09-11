Rails.application.routes.draw do
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'properties#index'

  devise_for :users
  resources :properties
end
