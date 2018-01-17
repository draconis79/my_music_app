Rails.application.routes.draw do
<<<<<<< HEAD
  root 'welcome#index'
=======
>>>>>>> cf0f0f07d4706bfec642e808edadb6596525d0c7
  resources :reviews, only: [:index]
  resources :albums, only: [:index, :show] do
    resources :reviews, only: [:create, :update, :destroy]
  end
end
