# frozen_string_literal: true
Rails.application.routes.draw do
  resources :libraries, only: [:index, :show, :create, :update, :destroy]
  resources :examples, except: [:new, :edit]
  resources :fundraisers, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  get '/fundraisers', to: 'fundraisers#index'
  post '/libraries', to: 'libraries#create'
  patch '/libraries/:fundraiser_id', to: 'libraries#update'
  delete '/libraries/:id', to: 'libraries#destroy'
  resources :users, only: [:index, :show]
end
