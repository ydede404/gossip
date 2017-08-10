Rails.application.routes.draw do
  get 'ragots/new'

  devise_for :corsairs
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ragots
end
