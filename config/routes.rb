Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

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
