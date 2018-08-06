Rails.application.routes.draw do
  get 'store/index'

  resources :items

  root 'store#index'

  #api routes

  get '/api/items' => 'store#show'

end