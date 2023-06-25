Rails.application.routes.draw do  
  root "pictures#index"

  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create, :show, :edit, :update] do
    collection do
      post :confirm
    end
  end

  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :favorites, only: [:index, :create, :destroy]
end
