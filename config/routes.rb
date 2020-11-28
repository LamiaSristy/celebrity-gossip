Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts do
    resources :comments
    resources :likes, only: [:create, :destroy]
  end
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
