Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'genres/index'

  get 'genres/show'

  get '/thankyou', to: 'pages#thanks'
  
  resources :artists
  get 'dashboards/show'

  devise_for :users, controllers: {:registrations => 'users/registrations'}
  resources :songs
  resources :genres
  get 'pages/index'

  get 'pages/contact'

  get "/dashboard", to: "dashboards#show"
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
