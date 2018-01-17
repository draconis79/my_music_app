Rails.application.routes.draw do
  root 'welcome#index'
  resources :reviews, only: [:index]
  resources :albums, only: [:index, :show] do
    resources :reviews, only: [:create, :update, :destroy]
  end
end
