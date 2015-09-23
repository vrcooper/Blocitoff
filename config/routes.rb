Rails.application.routes.draw do

  get 'users/show'

  devise_for :users
  resources :users, only: [:update, :show]
  get 'welcome/index'

  root to: 'welcome#index'

end
