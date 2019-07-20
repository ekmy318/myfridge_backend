# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :groceries, :examples, except: %i[new edit]

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  patch '/users/:id' => 'users#update'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
