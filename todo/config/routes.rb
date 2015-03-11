Rails.application.routes.draw do
  resources :todolists
  resources :todoitems
  root 'todolists#index'
end
