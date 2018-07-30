Rails.application.routes.draw do
  get 'store/index'

  resources :items

  root 'store#index'
end
