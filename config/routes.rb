Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, except: :index
  resources :users, only: :show
  #resources :categories
  resources :posts do
    post :confirm,action: :confirm_new, on: :new
    #resources :likes, only: [:create, :destroy]
    resources :answers
  end
end