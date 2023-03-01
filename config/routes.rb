Rails.application.routes.draw do
  resources :signups, only: [:index, :create, :show]
  resources :activities, only: [:index, :destroy]
  resources :campers, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
