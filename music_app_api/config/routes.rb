Rails.application.routes.draw do
  resources :reviews, only: [:index]
  resources :albums, only: [:index, :show] do
    resources :reviews, only: [:create]
  end
end
