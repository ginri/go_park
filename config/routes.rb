Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :parks, except: [:index] do
    resource :favorite, only: [:create, :destroy]
  end

  resources :prefectures, only: [] do
    resources :parks, only: [:index]
  end

  root to: 'homes#top'
  get '/about', to: 'homes#about', as: :about

   get 'users/:id' => 'users#show', as: 'name'

end

