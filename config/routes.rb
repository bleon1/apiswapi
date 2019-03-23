Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :movies, only: [:show]
  resources :personajes, only: [:show]
  resources :planetas, only: [:show]
  resources :spaceships, only: [:show]
end
