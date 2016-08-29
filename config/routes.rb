Rails.application.routes.draw do
  resources :homes
  devise_for :user, controllers: { registrations: 'registrations' }

  devise_scope :user do
    get 'user/:id' => 'registrations#show', as: "show_profile"
    get 'users'    => 'registrations#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/homepage/index'
  get '/homepage/new'

  root 'homepage#index'
end
