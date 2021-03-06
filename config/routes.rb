Rails.application.routes.draw do


  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as:'about'

  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index]

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
