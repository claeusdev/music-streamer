Rails.application.routes.draw do
  get 'dashboards/show'

  devise_for :artists
  devise_for :users
  resources :songs
  resources :sonts
  resources :artists
  get 'pages/index'

  get 'pages/contact'

  get "/dashboard", to: "dashboards#show"
  root "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
