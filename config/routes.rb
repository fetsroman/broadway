Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :plays do
    resources :reviews
  end
  root 'plays#index'
end
