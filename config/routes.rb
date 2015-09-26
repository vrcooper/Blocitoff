Rails.application.routes.draw do

  

  devise_for :users
  resources :users, only: [:show]
  
  get 'welcome/index'

  authenticated do

    root to: 'users#show', as: :authenticated_root

  end

  unauthenticated do
  
    root to: 'welcome#index'

  end

  


end
