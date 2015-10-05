Rails.application.routes.draw do

  

  get 'items/create'

  devise_for :users
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end
  
  get 'welcome/index'

  authenticated do

    root to: 'users#show', as: :authenticated_root

  end

  unauthenticated do
  
    root to: 'welcome#index'

  end

  


end
