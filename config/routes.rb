Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#top"
  resources :coordinates, only: [:new, :create, :index]
  resources :items, only: [:index]
end
