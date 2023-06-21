Rails.application.routes.draw do  
  root "pictures#index"

  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    collection do
      post :confirm
    end
  end

  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :favorites, only: [:show, :create, :destroy]
end
