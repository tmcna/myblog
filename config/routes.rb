Myblog::Application.routes.draw do
  get "posts/index"

  resources :posts do
    resources :comments
      end
  get "home/index"

  devise_for :users

  root :to => 'home#index'
end
