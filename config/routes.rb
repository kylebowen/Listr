Rails.application.routes.draw do
  root to: 'static#index'
  resources :lists do
    resources :list_items, shallow: true
  end
  devise_for :users
end
