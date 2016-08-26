Rails.application.routes.draw do
  resources :homes
  devise_for :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/homepage/index'
  get '/homepage/new'

  root 'homepage#index'
end
