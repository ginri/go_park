Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :parks, except: [:index] do
    resource :favorite, only: [:create, :destroy]
  end

  resources :prefectures, only: [] do
    resources :parks, only: [:index]
  end

  resources :parks, only: [:new, :create, :index, :show, :destroy] do
    resources :park_comments, only: [:create]
  end

  root to: 'homes#top'
  get '/about', to: 'homes#about', as: :about

   get 'users/:id' => 'users#show', as: 'name'

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

end

