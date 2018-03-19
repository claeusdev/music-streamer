Rails.application.routes.draw do
  get 'dashboards/show'

  devise_for :artists, controllers: {:registrations => 'artists/registrations'}
  devise_for :users, controllers: {:registrations => 'users/registrations'}
  resources :songs
  resources :sonts
  resources :artist, only: [:show]
  get 'pages/index'

  get 'pages/contact'

  get "/dashboard", to: "dashboards#show"
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
