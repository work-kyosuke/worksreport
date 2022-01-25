Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'home#top'
  
  get '/dashboard', to: 'users#index'
  
  resources :buildings, only: [:index, :new, :create ]
  resources :reports
  resources :lineforms
  resources :users, only: [:show, :edit, :update ]
  
  

end
