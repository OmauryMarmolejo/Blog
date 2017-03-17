Rails.application.routes.draw do
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  devise_for :users
end
