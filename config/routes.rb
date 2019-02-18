Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  # get 'rooms/item_create'
  # get 'rooms/item_destroy'
  # get 'rooms/show'
  # get 'rooms/new'
  # get 'rooms/create'
  # get 'home/top'
  get 'home/index'
  # get 'users/edit'
  # get 'users/show'
  # get 'users/update'
  # get 'items/edit'
  # get 'items/show'
  # get 'items/update'
  # get 'items/create'
  # get 'items/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # home
  root to: 'home#top'

  # users
  resources :users, only: [:show, :edit, :update]
  # items
  resources :items, only: [:new, :create, :show, :edit, :update]


end
